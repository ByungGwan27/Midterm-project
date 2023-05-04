<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>post details page</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="cssPostDetail/css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">


<script src="//cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>   
<script>
 	document.addEventListener("DOMContentLoaded", function(){
 		CKEDITOR.replace('pdesc', {
 			filebrowserUploadUrl : 'prodUpload.do'
 		});
 		
 	})
 	
</script>
 	<tiles:insertAttribute name="nav"></tiles:insertAttribute>
<h1>공지사항 관리</h1> <h3>전체 공지사항을 관리합니다.</h3>
 	<tiles:insertAttribute name="body"></tiles:insertAttribute>
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <form action="productAdd.do" method="POST">
                <table class="table">
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="pcode" value="1234"></td>
                        <th>평점</th>
                        <td><input type="number" name="like" value="5"></td>
                    </tr>
                    <tr>
                        <th>상품명</th>
                        <td colspan="3"><input type="text" name="pname" value="코스타리카 따라주777"></td>
                    </tr>
                    <tr>
                        <th>상품가격</th>
                        <td><input type="number" name="price" value="3500"></td>
                        <th>할인가격</th>
                        <td><input type="number" name="sprice" value="2500"></td>
                    </tr>
                    <tr>
                        <th>상품설명</th>
                        <td colspan="3"><textarea name="pdesc" cols="100" rows="10"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="4" align="center">
                            <input type="submit" value="등록">
                            <input type="reset" value="취소">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
     	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
</section>