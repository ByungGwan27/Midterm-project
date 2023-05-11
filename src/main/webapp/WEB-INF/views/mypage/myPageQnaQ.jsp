<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="//cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
<script>
	document.addEventListener("DOMContentLoaded", function () {
		/* pdesc : 텍스트 area의 name속성 밑에 상품설명쪽에 있음 */
		CKEDITOR.replace('pdesc', {
			filebrowserUploadUrl: 'myPageQnaQCreate.do'
		});
	})
</script>


<title>Traveller - Q&A</title>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Q&A</h1>
<p class="mb-4">
	질문 내용을 작성해주세요</a>.
</p>

<!-- 본문  -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">질문내용</h6>
		<textarea name="pdesc" cols="100" rows="10"></textarea>
		<input type="submit"value="등록"> 
		<input type="reset" value="취소">
	</div>
</div>