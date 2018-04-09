<%--
  Created by IntelliJ IDEA.
  User: Sys_Admin
  Date: 4/5/2018
  Time: 6:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="templates/header.jsp"%>

<html>

<body>



<section class="gallery-block cards-gallery">
    <div class="container">
        <div class="heading">
            <h2>Cards Gallery</h2>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 transform-on-hover">
                    <a class="lightbox" href="resources/img/image1.jpg">
                        <img src="resources/img/image1.jpg" alt="Card Image" class="card-img-top">
                    </a>

                    <div class="card-body">
                        <h6><a href="#">Lorem Ipsum</a></h6>

                        <p class="text-muted card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                            quam urna.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 transform-on-hover">
                    <a class="lightbox" href="resources/img/image2.jpg">
                        <img src="resources/img/image2.jpg" alt="Card Image" class="card-img-top">
                    </a>

                    <div class="card-body">
                        <h6><a href="#">Lorem Ipsum</a></h6>

                        <p class="text-muted card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                            quam urna.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 transform-on-hover">
                    <a class="lightbox" href="resources/img/image3.jpg">
                        <img src="resources/img/image3.jpg" alt="Card Image" class="card-img-top">
                    </a>

                    <div class="card-body">
                        <h6><a href="#">Lorem Ipsum</a></h6>

                        <p class="text-muted card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                            quam urna.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 transform-on-hover">
                    <a class="lightbox" href="resources/img/image4.jpg">
                        <img src="resources/img/image4.jpg" alt="Card Image" class="card-img-top">
                    </a>

                    <div class="card-body">
                        <h6><a href="#">Lorem Ipsum</a></h6>

                        <p class="text-muted card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                            quam urna.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 transform-on-hover">
                    <a class="lightbox" href="resources/img/image5.jpg">
                        <img src="resources/img/image5.jpg" alt="Card Image" class="card-img-top">
                    </a>

                    <div class="card-body">
                        <h6><a href="#">Lorem Ipsum</a></h6>

                        <p class="text-muted card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                            quam urna.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 transform-on-hover">
                    <a class="lightbox" href="resources/img/image6.jpg">
                        <img src="resources/img/image6.jpg" alt="Card Image" class="card-img-top">
                    </a>

                    <div class="card-body">
                        <h6><a href="#">Lorem Ipsum</a></h6>

                        <p class="text-muted card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
                            quam urna.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.cards-gallery', {animation: 'slideIn'});
</script>
</body>
</html>