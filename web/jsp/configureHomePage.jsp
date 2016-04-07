<%--
  Online Store Configure Home Page
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.swing.JFileChooser, java.io.File" %>

<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Store</title>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="../resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="../resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="../resources/css/price-range.css" rel="stylesheet">
    <link href="../resources/css/animate.css" rel="stylesheet">
    <link href="../resources/css/main.css" rel="stylesheet">
    <link href="../resources/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../resources/js/html5shiv.js"></script>
    <script src="../resources/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="../resources/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="../resources/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114"
          href="../resources/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72"
          href="../resources/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../resources/images/ico/apple-touch-icon-57-precomposed.png">
    <script src="../resources/js/jquery.js"></script>
</head>
<body>

<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="../jsp/index.jsp">Home</a></li>
                <li class="active">Edit Home Page</li>
            </ol>
        </div><!--/breadcrums-->

        <div class="step-one">
            <h2 class="heading">Change the items in Home Page</h2>
        </div>
        <div class="checkout-options">
        </div><!--/checkout-options-->
        <div class="shopper-informations">
            <div class="row">
                <div class="col-sm-8 clearfix">
                    <div class="shopper-info">
                        <p>Urls for slider</p>
                        <!--  <form method="POST" action="../../web/jsp/saveUrls.jsp">  -->
                        <form method="POST" action="../../web/jsp/saveUrls.jsp">
                            <input type="text" name="dirsld1" placeholder="Slide 1">
                            <input type="text" name="dirsld2" placeholder="Slide 2">
                            <input type="text" name="dirsld3" placeholder="Slide 3">

                            <p>Select images for slider</p>

                            Image 1:
                            <input type="file" name="txtPhoto" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 2:
                            <input type="file" name="txtPhoto2" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 3:
                            <input type="file" name="txtPhoto3" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />

                            <p>Urls for Categories</p>
                            <input type="text" name="catdir1" placeholder="Sportswear">
                            <input type="text" name="catdir2" placeholder="Mens">
                            <input type="text" name="catdir3" placeholder="Womens">
                            <input type="text" name="catdir4" placeholder="Kids">
                            <input type="text" name="catdir5" placeholder="Fashion">
                            <input type="text" name="catdir6" placeholder="Households">
                            <input type="text" name="catdir7" placeholder="Interiors">
                            <input type="text" name="catdir8" placeholder="Clothing">
                            <input type="text" name="catdir9" placeholder="Bags">
                            <input type="text" name="catdir10" placeholder="Shoes">

                            <p>Urls for Brands</p>
                            <input type="text" name="brand1" placeholder="Acne">
                            <input type="text" name="brand2" placeholder="Grüne Erde">
                            <input type="text" name="brand3" placeholder="Albiro">
                            <input type="text" name="brand4" placeholder="Ronhill">
                            <input type="text" name="brand5" placeholder="Oddmolly">
                            <input type="text" name="brand6" placeholder="Boudestijn">
                            <input type="text" name="brand7" placeholder="Rösch Creative Culture">

                            <p>Select images for Feature Items</p>
                            Image 1:
                            <input type="file" name="featimg1" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 2:
                            <input type="file" name="featimg2" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 3:
                            <input type="file" name="featimg3" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 4:
                            <input type="file" name="featimg4" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 5:
                            <input type="file" name="featimg5" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 6:
                            <input type="file" name="featimg6" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />

                            <p>Select images for Recommended Items</p>
                            Image 1:
                            <input type="file" name="rec1" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 2:
                            <input type="file" name="rec2" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 3:
                            <input type="file" name="rec3" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 4:
                            <input type="file" name="rec4" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 5:
                            <input type="file" name="rec5" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />
                            Image 6:
                            <input type="file" name="rec6" placeholder="Upload Your Image" accept="image/gif, image/jpeg, image/png" />

                            <a class="btn btn-primary" href="../jsp/index.jsp">Cancel</a>
                            <input type="submit" class="btn btn-primary">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> <!--/#cart_items-->


<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/jquery.scrollUp.min.js"></script>
<script src="../resources/js/price-range.js"></script>
<script src="../resources/js/jquery.prettyPhoto.js"></script>
<script src="../resources/js/main.js"></script>
</body>
</html>