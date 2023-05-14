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
/*채팅창 가로길이*/
.chat_wrap {
	border: 1px solid #e3e6f0;
	width: 600px;
	padding: 5px;
	font-size: 20px;
	color: #333
}

/*채팅창 배경, 세로길이*/
.chat_wrap .inner {
	background-color: #e3e6f0;
	border-radius: 5px;
	padding: 10px;
	overflow-y: scroll;
	height: 600px;
}

.chat_wrap .item {
	margin-top: 15px
}

.chat_wrap .item:first-child {
	margin-top: 0px
}

/*채팅창 길이*/
.chat_wrap .item .box {
	display: inline-block;
	max-width: 350px;
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
	height: 50px;
	padding-left: 5px;
	box-sizing: border-box;
	margin-top: 5px
}

input[type="text"]::placeholder {
	color: #999
}

.gwan-main-container {
	border: #e3e6f0 1px solid;
	height: 700px;
	margin-top: 32px;
	margin-bottom: 32px;
	margin-left: 300px
}

.gwan-flex-container {
	display: inline-flex;
}

.gwan-flex-item-left {
	width: 260px;
	height: 693px;
	margin: 0px;
	background-color: #f8f9fc;
}

.gwan-flex-item-center {
	width: 600px;
	height: 693px;
	margin: 0px;
	background-color: #f8f9fc;
}

.gwan-flex-item-right {
	width: 250px;
	height: 693px;
	margin: 0px;
	background-color: #f8f9fc;
}

.gwan-scroll-table {
	table-layout: fixed;
}

tbody {
	height: 623px;
	overflow-y: auto;
}

.gwan-scroll-table th {
	height: 70px
}

.gwan-scroll-body {
	display: block;
}

.gwan-scroll-table td {
	height: 100px;
	border-top: #e3e6f0 1px solid;
	border-bottom: #e3e6f0 1px solid;
	text-overflow: ellipsis;
	overflow: hidden;
}

#profileimage {
	width: 50px;
	height: 50px;
	margin-left: 10px;
	margin-top: 10px;
}

#profileimage2 {
	width: 150px;
	height: 150px;
	margin-left: 10px;
	margin-top: 10px;
	text-align: center;
}

.gwan-width {
	width: 230px;
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
										'<div class="item ' + _class + '"><div class="box"><p class="msg">'
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
		var th = hh > 12 ? hh - 12 : hh;
		var ct = apm + " " + th + ":" + mm + "";
		return ct;
	}
</script>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">메세지함</h1>

<!-- 본문 -->
<div class="gwan-main-container gwan-flex-container">
	<div class="list-container gwan-flex-item-left">
		<table class="gwan-scroll-table">
			<thead>
				<tr>
					<!-- <th>전체메시지 | 안 읽은 메시지 | 별표 메시지</th> -->
					<th><button type="button" id="profileButton">프로필</button> <br>
						<br>
						<button type="button" id="profileMessageButton">프로필세부</button></th>
				</tr>
			</thead>
			<tbody class="gwan-scroll-body" id="profile">
				<!-- <tr>
					<td><img class="img-profile rounded-circle" src="images/nong10.jpg" id="profileimage">닉네임<br>1번타자</td>
				</tr> -->
			</tbody>
		</table>
	</div>

	<div class="chat_wrap gwan-chat gwan-flex-item-center" id="firstpage">

		<div class="inner">
			<!-- 본문 -->

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

		<input type="text" class="mymsg" placeholder="내용 입력" class="textinput">
		<button class="textinput">파일전송</button>
		<input type="text" class="yourmsg" placeholder="내용 입력"
			class="textinput">

	</div>

	<div class="gwan-right-container gwan-flex-item-right"
		id="gwanRightProfile">
		<!-- 우측 프로필 -->
	</div>

</div>

<script>
	const gwanRightProfile = document.getElementById('gwanRightProfile');

	
	//첫화면
	document.addEventListener('DOMContentLoaded', function () {
		console.log('시작화면');
		
		viewprofile ();
	
	});
	
	
	// 버튼 클릭시 프로필 조회
	const profileButton = document.getElementById('profileButton');
	profileButton.addEventListener('click', viewprofile);
	
	// 1.프로필 조회
	function viewprofile () {
		fetch('myPagereadProfile.do')
		.then(resolve => resolve.json())
		.then(result => {
			console.log('프로필 조회');
			console.log('1.프로필 지우기');
			profile.innerHTML = "";
			console.log('텍스트, 입력상자 지우기');
			firstpage.innerHTML = "";
			console.log('우측 프로필 지우기');
			gwanRightProfile.innerHTML = "";
			
			for (let i in result) {
				let tr = makeprofile ({
					memberNickname: result[i]['memberNickname'],
					memberProfile: result[i]['memberProfile'],
					memberId: result[i]['memberId']
				});
			}
			
		})
	}
	
	//프로필 생성
	function makeprofile (list = {}) {
		console.log('프로필 생성');
		let tr = document.createElement('tr');

		let td = document.createElement('td');
		td.classList.add('gwan-width');
		
		let image = document.createElement('img');
		image.className = 'img-profile rounded-circle';
		image.src = list.memberProfile;
		image.id = 'profileimage';
		
		let nickname = document.createTextNode(list.memberNickname);

		td.appendChild(image);
		//간격 띄우기
		td.appendChild(document.createTextNode(' '));
		td.appendChild(nickname);

		tr.appendChild(td);
		
		//프로필 더블클릭시 세부조회 + 우측프로필
		tr.addEventListener('dblclick', function() {
		    console.log('프로필 더블클릭');
		    console.log('2.프로필 지우기');
			profile.innerHTML = "";
			console.log('텍스트, 입력상자 지우기');
			firstpage.innerHTML = "";
			console.log('우측 프로필 지우기');
			gwanRightProfile.innerHTML = "";
			
		    let memberId = list.memberId;
		    console.log('memberId:', memberId);
		    
		    viewprofileMessage ();
		    
		    viewrightprofile (memberId);
		    
		    viewchatlist(memberId);
		    
		});
		
		
		let tbody = document.getElementById('profile');

		tbody.appendChild(tr);
	}
	
	// 버튼클릭시 프로필 세부 메세지 조회
	const pmb = document.getElementById('profileMessageButton');
	pmb.addEventListener('click', viewprofileMessage);
	
	//2.프로필 세부 메세지
	function viewprofileMessage () {
		 fetch('myPagereadProfileMessage.do')
	    	.then(resolve => resolve.json())
	    	.then(result => {
	    		console.log('프로필 세부');
	    		console.log('3.프로필 지우기');
				profile.innerHTML = "";
				

	    		for (let i in result) {
					
					let tr = makeprofileMessage ({
						memberNickname: result[i]['memberNickname'],
						memberProfile: result[i]['memberProfile'],
						messageId: result[i]['messageId'],
						memberId: result[i]['memberId'],
						messageContent: result[i]['messageContent'],
						messageImg: result[i]['messageImg'],
						messageDate: result[i]['messageDate'],
						messageCheck: result[i]['messageCheck'],
						messageDelete: result[i]['messageDelete']
						
					});
				}
	    		
	    	});
	}
	
	
	
	//프로필 세부 생성
	function makeprofileMessage (list2 = {}) {
		console.log('프로필 세부 생성');
		let tr = document.createElement('tr');

		let td = document.createElement('td');
		td.classList.add('gwan-width');
		
		let image = document.createElement('img');
		image.className = 'img-profile rounded-circle';
		image.src = list2.memberProfile;
		image.id = 'profileimage';
		
		let nickname = document.createTextNode('닉네임 : ' + list2.memberNickname);
		let messageContent = document.createTextNode('마지막 대화 : ' + list2.messageContent);

		td.appendChild(image);
		td.appendChild(document.createTextNode(' '));
		td.appendChild(nickname);
		td.appendChild(document.createElement('br'));
		td.appendChild(document.createElement('br'));
		td.appendChild(messageContent);

		tr.appendChild(td);
		
		//프로필세부 더블클릭시 채팅창 오픈 + 우측프로필조회
		tr.addEventListener('dblclick', function() {
		    console.log('프로필 세부 더블클릭 이벤트');
		    console.log('4.텍스트, 입력상자 지우기');
			firstpage.innerHTML = "";
			console.log('우측 프로필 지우기');
			gwanRightProfile.innerHTML = "";
			
			let memberId = list2.memberId;
		    
		    viewrightprofile (memberId);
		    
		    viewchatlist(memberId);
		    
		});
		
		let tbody = document.getElementById('profile');

		tbody.appendChild(tr);
		
	}
	
	//우측 프로필 조회
	function viewrightprofile (memberId){
		fetch('myPagereadProfile.do')
    	.then(resolve => resolve.json())
    	.then(result => {
   	      	console.log('우측 프로필 조회');

    		for (let i in result) {
    			if (result[i]['memberId'] === memberId) {
					let rdiv = makerightprofile ({
						memberNickname: result[i]['memberNickname'],
						memberProfile: result[i]['memberProfile'],
						memberId: result[i]['memberId']
					});
				}	
    		}
    	});
	}
	
	
	//우측 프로필 생성
	function makerightprofile(list3 = {}) {
		
		console.log('우측 프로필 생성');
		  let div = document.createElement('div');
		  
		  let image = document.createElement('img');
		  image.className = 'img-profile rounded-circle';
		  image.src = list3.memberProfile;
		  image.id = 'profileimage2';

		  let nickname = document.createTextNode(list3.memberNickname);

		  div.appendChild(image);
		  div.appendChild(document.createElement('br'));
		  let hr = document.createElement('hr');
		  div.appendChild(hr);
		  
		  let nicknameDiv = document.createElement('div');
		  nicknameDiv.appendChild(nickname);
		  div.appendChild(nicknameDiv);

		  let grp = document.getElementById('gwanRightProfile');
		  grp.appendChild(div);
		}
	

	
	//채팅창 생성
	function viewchatlist(memberId) {
		console.log('채팅창 생성');

		let chatdiv = document.getElementsByClassName('chat_wrap')[0];

		let innerDiv = document.createElement('div');
		innerDiv.classList.add('inner');
		chatdiv.appendChild(innerDiv);

		let mMI = document.createElement('input');
		mMI.type = 'text';
		mMI.classList.add('mymsg', 'textinput');
		mMI.placeholder = '내용 입력';
		chatdiv.appendChild(mMI);

		let fileUploadButton = document.createElement('button');
		fileUploadButton.classList.add('textinput');
		fileUploadButton.textContent = '파일전송';
		chatdiv.appendChild(fileUploadButton);

		/* let yMI = document.createElement('input');
		yMI.type = 'text';
		yMI.classList.add('yourmsg', 'textinput');
		yMI.placeholder = '내용 입력';
		chatWrapDiv.appendChild(yMI); */
	  
	
		// 입력 버튼 클릭 이벤트 처리
		let addButton = document.createElement('button');
		addButton.textContent = '입력';
		addButton.classList.add('textinput');
		addButton.addEventListener('click', createChatItem);
		chatdiv.appendChild(addButton);

		// 키 눌림 이벤트 처리
		  mMI.addEventListener('keypress', function(event) {
	    	if (event.key === 'Enter' && this.value.length > 0) {
		      createChatItem();
		    }
		  });

		// 채팅 아이템 생성 함수
		function createChatItem() {
		  const inputValue = mMI.value;
		  if (inputValue.trim() === '') return;

		  const newItem = document.createElement('div');
		  newItem.classList.add('item');

		  const newBox = document.createElement('div');
		  newBox.classList.add('box');

		  const newMsg = document.createElement('p');
		  newMsg.classList.add('msg');
		  newMsg.textContent = inputValue;

		  const newTime = document.createElement('span');
		  newTime.classList.add('time');
		  newTime.textContent = getCurrentTime();

		  newBox.appendChild(newMsg);
		  newBox.appendChild(newTime);
		  newItem.appendChild(newBox);
		  document.querySelector('.inner').appendChild(newItem);

		  mMI.value = '';
		  mMI.focus();
		}

		// 현재 시간 반환 함수
		function getCurrentTime() {
		    const currentTime = new Date().toLocaleTimeString('en-US', { hour: 'numeric', minute: 'numeric' });
		    return currentTime;
		  }
		}
	
</script>