package cn.nas.controller;

import cn.nas.dao.OrderMapper;
import cn.nas.pojo.Order;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;

@Controller
public class DaoChu {
    @Autowired
    private OrderMapper orderMapper;
    @SuppressWarnings("resource")
    @RequestMapping(value = "/daochu")
    public void daochu(@RequestParam Integer id,
                       HttpServletResponse response,
                       HttpSession session
    ){

       Order order = orderMapper.selectByPrimaryKey(id);
        String[] tableHeaders = {"订单号","订单金额","订单状态","开单日期","卡类型"};

        HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet("Sheet1");
        HSSFCellStyle cellStyle = workbook.createCellStyle();

        Font font = workbook.createFont();
        font.setColor(HSSFColor.RED.index);
        cellStyle.setFont(font);

        // 将第一行的三个单元格给合并
        sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 2));
        HSSFRow row = sheet.createRow(0);
        HSSFCell beginCell = row.createCell(0);
        beginCell.setCellValue("订单信息表");
        beginCell.setCellStyle(cellStyle);

        row = sheet.createRow(1);
        // 创建表头
        for (int i = 0; i < tableHeaders.length; i++) {
            HSSFCell cell = row.createCell(i);
            cell.setCellValue(tableHeaders[i]);
            cell.setCellStyle(cellStyle);
        }
        row = sheet.createRow( 2);
        row.createCell(0).setCellValue(order.getOrderNum());
        row.createCell(1).setCellValue(order.getOrderPrice());
        row.createCell(2).setCellValue(order.getOrderState());
        row.createCell(3).setCellValue(order.getOrderDate());
        row.createCell(4).setCellValue(order.getPayType());

        OutputStream outputStream = null;
        try {
            outputStream = response.getOutputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        response.reset();
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-disposition", "attachment;filename=my.xls");

        try {
            workbook.write(outputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
