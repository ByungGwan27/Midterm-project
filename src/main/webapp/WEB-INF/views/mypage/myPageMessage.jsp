<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Traveller - 메세지함</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" />
<script src="https://code.jquery.com/jquery-1.8.3.min.js"
	integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8="
	crossorigin="anonymous"></script>

<style>
.chat_wrap {
	border: 1px solid #999;
	width: 300px;
	padding: 5px;
	font-size: 13px;
	color: #333
}

/*채팅창 배경*/
.chat_wrap .inner {
	background-color: #e3e6f0;
	border-radius: 5px;
	padding: 10px;
	overflow-y: scroll;
	height: 400px;
}

.chat_wrap .item {
	margin-top: 15px
}

.chat_wrap .item:first-child {
	margin-top: 0px
}

.chat_wrap .item .box {
	display: inline-block;
	max-width: 180px;
	position: relative
}

.chat_wrap .item .box::before {
	content: "";
	position: absolute;
	left: -8px;
	top: 9px;
	border-top: 0px solid transparent;
	border-bottom: 8px solid transparent;
	border-right: 8px solid #fff;
}

.chat_wrap .item .box .msg {
	background: #fff;
	border-radius: 10px;
	padding: 8px;
	text-align: left;
	word-break: break-word;
}

/*시간 색상*/
.chat_wrap .item .box .time {
	font-size: 11px;
	color: #000;
	position: absolute;
	right: -75px;
	bottom: 5px;
	width: 70px
}

.chat_wrap .item.mymsg {
	text-align: right
}

/*채팅창 보더*/
.chat_wrap .item.mymsg .box::before {
	left: auto;
	right: -8px;
	border-left: 8px solid #6698ab;
	border-right: 0;
}

/*채팅창 색상*/
.chat_wrap .item.mymsg .box .msg {
	background: #6698ab
}

.chat_wrap .item.mymsg .box .time {
	right: auto;
	left: -75px
}

.chat_wrap .item .box {
	transition: all .3s ease-out;
	margin: 0 0 0 20px;
	opacity: 0
}

.chat_wrap .item.mymsg .box {
	transition: all .3s ease-out;
	margin: 0 20px 0 0;
}

.chat_wrap .item.on .box {
	margin: 0;
	opacity: 1;
}

/*채팅입력 상자*/
input[type="text"] {
	border: 0;
	width: 100%;
	background: #ddd;
	border-radius: 5px;
	height: 30px;
	padding-left: 5px;
	box-sizing: border-box;
	margin-top: 5px
}

input[type="text"]::placeholder {
	color: #999
}
</style>
<script>
	$(function() {
		$("input[type='text']").keypress(
				function(e) {
					if (e.keyCode == 13 && $(this).val().length) {
						var _val = $(this).val();
						var _class = $(this).attr("class");
						$(this).val('');
						var _tar = $(".chat_wrap .inner")
								.append(
										'<div class="item '+_class+'"><div class="box"><p class="msg">'
												+ _val
												+ '</p><span class="time">'
												+ currentTime()
												+ '</span></div></div>');

						var lastItem = $(".chat_wrap .inner")
								.find(".item:last");
						setTimeout(function() {
							lastItem.addClass("on");
						}, 10);

						var position = lastItem.position().top
								+ $(".chat_wrap .inner").scrollTop();
						console.log(position);

						$(".chat_wrap .inner").stop().animate({
							scrollTop : position
						}, 500);
					}
				});

	});

	var currentTime = function() {
		var date = new Date();
		var hh = date.getHours();
		var mm = date.getMinutes();
		var apm = hh > 12 ? "오후" : "오전";
		var ct = apm + " " + hh + ":" + mm + "";
		return ct;
	}
</script>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">메세지함</h1>

<!-- 본문  -->
<div class="card shadow mb-4">
		<div>
		내용
		</div>
		<div class="chat_wrap">
			<div class="inner">

				<!-- <div class="item">
                <div class="box">
                    <p class="msg">안녕하세요</p>
                    <span class="time">오전 10:05</span>
                </div>
            </div>

            <div class="item mymsg">
                <div class="box">
                    <p class="msg">안녕하세요</p>
                    <span class="time">오전 10:05</span>
                </div>
            </div> -->

			</div>

			<input type="text" class="mymsg" placeholder="내용 입력">
			<!-- <input type="text" class="yourmsg" placeholder="내용 입력"> -->
		</div>
	</div>
