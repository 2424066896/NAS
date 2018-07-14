package cn.nas.tools;
import java.awt.Font;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import javax.servlet.http.HttpSession;
import javax.swing.JPanel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.servlet.ServletUtilities;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
public class PieChart {
    private DefaultCategoryDataset dataset;

    public DefaultCategoryDataset getDefaultCategoryDataset() {
        return dataset;
    }

    public void setDefaultCategoryDataset(DefaultCategoryDataset defaultCategoryDataset) {
        this.dataset = defaultCategoryDataset;
    }

    public  String genBarChart(HttpSession session) throws IOException {
        /*
         * 解决字体乱码（在创建图表之前设定）
         */
        StandardChartTheme standardChartTheme = new StandardChartTheme("CN");
        standardChartTheme.setExtraLargeFont(new Font("隶书", Font.BOLD, 20));
        standardChartTheme.setRegularFont(new Font("宋书", Font.PLAIN, 15));
        standardChartTheme.setLargeFont(new Font("宋书", Font.PLAIN, 15));
        ChartFactory.setChartTheme(standardChartTheme);

        //创建chart，参数依次为  图表标题   x轴名  y轴名  dataset 方向  ...
        JFreeChart chart = ChartFactory.createBarChart("发货排行榜", "城市", "订单数量", dataset, PlotOrientation.VERTICAL, true,
                true, true);

        String fileName = ServletUtilities.saveChartAsJPEG(chart, 700, 500, null, session);
        return fileName;
    }
}
