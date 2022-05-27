package controller;

import models.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerController", urlPatterns = "/customer")
public class CustomerController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customer[] customers = new Customer[5];
        customers[0] = new Customer("Tran Thanh Uyen", "29-06-1998", "Da Nang", "https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/49285358_2057528290975486_5218007432072003584_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=x5SaLGH-SMAAX8W_NsE&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT-eFtWMcZSHs9o7n8xHwdKJLhTptuj42U-kO2IBoK9NkQ&oe=62B6541F");
        customers[1] = new Customer("Nguyen Bao Anh", "29-06-1997", "Quang Binh", "https://thuthuatnhanh.com/wp-content/uploads/2020/09/tai-hinh-nen-gai-xinh-full-hd.jpg");
        customers[2] = new Customer("Ho Mai Trinh", "29-06-1996", "Hue", "https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-nen-gai-xinh-full-hd.jpg");
        customers[3] = new Customer("Le Bich Tram", "29-06-1999", "Ha Noi", "https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-nen-girl-xinh-hoc-duong-toc-duoi-ga.jpg");
        customers[4] = new Customer("Hoang Bao Quyen", "29-06-2003", "Quang Nam", "https://thuthuatnhanh.com/wp-content/uploads/2020/09/hinh-nen-gai-xinh-hd-dang-chup-anh.jpg");
        request.setAttribute("listCustomer", customers);
        request.getRequestDispatcher("list_customer.jsp").forward(request,response);
    }
}
