<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - 회원정보수정</title>

<h1 class="h3 mb-4 text-gray-800">회원정보수정</h1>

<form action="modifyNotice.do" method="post">
  <table class="table">
    <tr>
      <th>글번호</th>
      <td><input type="text" name="nid" value="${noticeInfo.noticeId }" readonly></td>
    </tr>
    <tr>
      <th>제목</th>
      <td><input type="text" name="title" value="${noticeInfo.noticeTitle }"></td>
    </tr>
    <tr>
      <th>내용</th>
      <td><textarea rows="3" cols="20" name="subject">${noticeInfo.noticeSubject }</textarea></td>
    </tr>
    <tr>
      <th>작성자</th>
      <td><input type="text" name="writer" value="${noticeInfo.noticeWriter }" readonly></td>
    </tr>
    <tr>
      <th>첨부파일</th>
      <td>
       <c:if test="${noticeInfo.attachFile != null && noticeInfo.attachFile != ''}">
        <img width="200px" src="images/${noticeInfo.attachFile }">
       </c:if>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <button type="submit">저장(수정)</button>
        <button type="button">삭제</button>
      </td>
    </tr>
  </table>
</form>