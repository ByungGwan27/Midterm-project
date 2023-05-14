<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <form action="addComment.do" method="POST">
    <input type="hidden" name="boardId" value="${boardId}" />
    <input type="text" name="userId" placeholder="아이디를 입력하세요." required />
    <textarea name="content" placeholder="댓글 내용을 입력하세요." required></textarea>
    <input type="submit" value="댓글 작성" />
</form>