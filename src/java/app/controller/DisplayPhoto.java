//цей сервлет не працює, фото не показує

package app.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DisplayPhoto")
public class DisplayPhoto extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {}
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect ("displayPhoto.jsp");
    }}


      /*  foreach($img_desc as $val)
        {
            $newname = date('YmdHis',time()).mt_rand().'.jpg';
            move_uploaded_file($val['tmp_name'],'./filedat/'.$newname);
            $links .= './filedat/'.$newname.', ';
            $connect = mysqli_connect('localhost', 'root', '');
            mysqli_select_db($connect, 'mydb');
            $query = "INSERT INTO pics (links) VALUES ('$links')";
            if($links) {
                mysqli_query($connect, $query);*/

        /* $imgData = file_get_contents($filename);
$size = getimagesize($filename);
mysql_connect("localhost", "$username", "$password");
mysql_select_db ("$dbname");
// mysqli
// $link = mysqli_connect("localhost", $username, $password,$dbname);
$sql = sprintf("INSERT INTO testblob
    (image_type, image, image_size, image_name)
    VALUES
    ('%s', '%s', '%d', '%s')",

    mysql_real_escape_string($size['mime']),
    mysql_real_escape_string($imgData),
    $size[3],
    mysql_real_escape_string($_FILES['userfile']['name'])
    );
mysql_query($sql);  */


        /*Для отображения картинки на веб странице

$link = mysql_connect("localhost", "username", "password");
mysql_select_db("testblob");
$sql = "SELECT image FROM testblob WHERE image_id=0";
$result = mysql_query("$sql");
header("Content-type: image/jpeg");
echo mysql_result($result, 0);
mysql_close($link);


         */



