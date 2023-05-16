<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 강병관 작성 -->

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

		<!-- <div class="inner">
			본문

			<div class="item yourmsg on">
				<div class="box">
					<p class="msg">안녕하세요</p>
					<span class="time">오전 10:05</span>
				</div>
			</div>

			<div class="item mymsg on">
				<div class="box">
					<p class="msg">안녕하세요</p>
					<span class="time">오전 10:05</span>
				</div>
			</div>

		</div>

		<input type="text" class="mymsg" placeholder="내용 입력" class="textinput">
		<button class="textinput">파일전송</button>
		<input type="text" class="yourmsg" placeholder="내용 입력"
			class="textinput"> -->

	</div>

	<div class="gwan-right-container gwan-flex-item-right"
		id="gwanRightProfile">
		<!-- 우측 프로필 -->
	</div>

</div>

<script>
	const gwanRightProfile = document.getElementById('gwanRightProfile');
	//채팅창 생성 때 사용한 채팅창 선택
	const chatWrap = document.getElementById('firstpage');
	const innerDiv = document.createElement('div');
	let boxDiv = document.createElement('div');
	
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
		.catch(error => console.error(error));
	}
	
	//프로필 생성
	function makeprofile (list = {}) {
		console.log('프로필 생성');
		let tr = document.createElement('tr');

		let td = document.createElement('td');
		td.classList.add('gwan-width');
		
		let image = document.createElement('img');
		image.className = 'img-profile rounded-circle';
		image.src = 'images/'+list.memberProfile;
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
			console.log('채팅창 지우기');
			innerDiv.innerHTML = "";
			
		    let memberId = list.memberId;
		    console.log('memberId:', memberId);
		    
		    viewprofileMessage ();
		    console.log('알1');
		    
		    viewrightprofile (memberId);
		    console.log('알2');
		    
		    viewchatlist(memberId);
		    console.log('알3');
		    
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
	    		
	    	})
		 .catch(error => console.error(error));
	}
	
	
	
	//프로필 세부 생성
	function makeprofileMessage (list2 = {}) {
		console.log('프로필 세부 생성');
		let tr = document.createElement('tr');

		let td = document.createElement('td');
		td.classList.add('gwan-width');
		
		let image = document.createElement('img');
		image.className = 'img-profile rounded-circle';
		image.src = 'images/'+list2.memberProfile;
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
			console.log('채팅창');
			innerDiv.innerHTML = "";
			
			let memberId = list2.memberId;
		    
		    viewrightprofile (memberId);
		    
		    viewchatlist(memberId);
			
		    
		});
		
		let tbody = document.getElementById('profile');

		tbody.appendChild(tr);
		
	}
	
	//3.우측 프로필 조회
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
    	})
		.catch(error => console.error(error));
	}
	
	
	//우측 프로필 생성
	function makerightprofile(list3 = {}) {
		console.log('우측 프로필 생성');
		  let div = document.createElement('div');
		  
		  let image = document.createElement('img');
		  image.className = 'img-profile rounded-circle';
		  image.src = 'images/'+list3.memberProfile;
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
	
	
	//4.채팅창 생성
	function viewchatlist(memberId) {
	    console.log('채팅창 생성');
	    
		//전역변수 2개 선언(2, 3)
	    
	    innerDiv.classList.add('inner');
	    chatWrap.appendChild(innerDiv);

	    const myMsgInput = document.createElement('input');
	    myMsgInput.type = 'text';
	    myMsgInput.classList.add('mymsg');
	    myMsgInput.placeholder = '내용 입력';
	    myMsgInput.id = 'textinput';
	    chatWrap.appendChild(myMsgInput);

	    const addButton = document.createElement('button');
	    addButton.textContent = '입력';
	    addButton.classList.add('textinput');
	    addButton.addEventListener('click', function() {
	        const input = document.getElementById('textinput');
	        const content = input.value.trim();

	        if (content !== '') {
	        	createMessage(content, true);
	            //채팅생성
	            createMessage (content, memberId);
	            input.value = '';
	        }
	    });
	    
	    chatWrap.appendChild(addButton);

	    const sendButton = document.createElement('button');
	    //sendButton.textContent = '파일전송';
	    sendButton.id = 'fileUploadButton';
	    chatWrap.appendChild(sendButton);
	    
	    // 엔터 키 이벤트 처리
	    myMsgInput.addEventListener('keydown', function(event) {
	        if (event.key === 'Enter') {
	            const input = document.getElementById('textinput');
	            const content = input.value.trim();

	            if (content !== '') {
	            	createMessage(content, true);
	                createMessage (content, memberId);
	                input.value = '';
	            }
	        }
	    });
	    
	    
	    messageRead(memberId);
	}
	
	//5.채팅창 읽어오기
	function messageRead (memberId2) {
				
		fetch("myPagereadMessage.do?memberId2=" + encodeURIComponent(memberId2))
			.then(resolve => resolve.json())
			.then(result => {
				console.log('7.채팅창 읽어오기');
				console.log('채팅내용 삭제');
				boxDiv.innerHTML = "";
				
				
				for (let i in result) {
						let rdiv = readChatmessage ({
							messageId: result[i]['messageId'],
							memberId: result[i]['memberId'],
							memberId2: result[i]['memberId2'],
							messageContent: result[i]['messageContent'],
							messageImg: result[i]['messageImg'],
							messageDate: result[i]['messageDate'],
							messageCheck: result[i]['messageCheck'],
							messageDelete: result[i]['messageDelete'],
							messageTime: result[i]['messageTime'],
							messageTime2: result[i]['messageTime2'],
							messageApm: result[i]['messageApm']
						}, memberId2);
						innerDiv.appendChild(rdiv);
	    		}
				
			})
		.catch(error => console.error(error));
		}
	
	//기존 채팅방 내용
	function readChatmessage(oldmessage = {}, memberId2) {
		console.log('8.기존 채팅 내역 불러오기');

	    let itemDiv = document.createElement('div');
	    itemDiv.classList.add('item');
	    itemDiv.classList.add(oldmessage.memberId2 === memberId2 ? 'mymsg' : 'yourmsg', 'on');

	    let boxDiv = document.createElement('div');
	    boxDiv.classList.add('box');

	    let msgP = document.createElement('p');
	    msgP.classList.add('msg');
	    msgP.textContent = oldmessage.messageContent;

	    let timeSpan = document.createElement('span');
	    timeSpan.classList.add('time');
	    timeSpan.textContent = oldmessage.messageDate + ' ';
	    timeSpan.textContent += oldmessage.messageTime + ' ';
	    timeSpan.textContent += oldmessage.messageTime2 + ' ';
	    timeSpan.textContent += oldmessage.messageApm;

	    boxDiv.appendChild(msgP);
	    boxDiv.appendChild(timeSpan);
	    itemDiv.appendChild(boxDiv);

	    innerDiv.appendChild(itemDiv);

	    return itemDiv;
	}
	
	//메세지 생성
	function createMessage (content, memberId2) {
		
		console.log('메세지를 만들어보자');
		console.log(memberId2);
		console.log(content);
		
		//const currentTime = getCurrentTime();
		const currentTimeObj = currentTime();
		let th = currentTimeObj.th;
		let mm = currentTimeObj.mm;
		let apm = currentTimeObj.apm;
		console.log(th);
		console.log(apm);
		console.log(mm);
/* 		const data = {
		  memberId2: memberId2,
		  content: content,
		  apm: currentTimeObj.apm,
		  th: currentTimeObj.th,
		  mm: currentTimeObj.mm
		}; 
 */		

		fetch("myPagecreateMessage.do?memberId2=" + encodeURIComponent(memberId2) + '&content=' + encodeURIComponent(content)
				 + '&th=' + encodeURIComponent(th) + '&mm=' + encodeURIComponent(mm) + '&apm=' + encodeURIComponent(apm))
		/* fetch("myPagecreateMessage.do", {
			method: 'POST',
		    headers: {
		      'Content-Type': 'application/json'
		    },
		    body: JSON.stringify(data)
	    }) */
			.then(resolve => resolve.json())
			.then(result => {
				
				 if (result.retCode === 'Success') {
			        console.log('성공!');
			      } else if (result.retCode === 'Fail') {
			        console.log('실패!');
			      }
				 viewprofileMessage ();
				 innerDiv.innerHTML = "";
				 messageRead(memberId2);
		    })
		    .catch(error => console.error(error));
	}
	
	
	/* function createChatItem(content, isMyMsg) {
		const innerDiv = document.querySelector('.inner');

	    const itemDiv = document.createElement('div');
	    itemDiv.classList.add('item');
	    if (isMyMsg) {
	        itemDiv.classList.add('mymsg');
	    }

	    const boxDiv = document.createElement('div');
	    boxDiv.classList.add('box');

	    const msgParagraph = document.createElement('p');
	    msgParagraph.classList.add('msg');
	    msgParagraph.textContent = content;

	    const timeSpan = document.createElement('span');
	    timeSpan.classList.add('time');
	    timeSpan.textContent = currentTime();

	    boxDiv.appendChild(msgParagraph);
	    boxDiv.appendChild(timeSpan);
	    itemDiv.appendChild(boxDiv);

	    innerDiv.appendChild(itemDiv);

	    // 스크롤 맨 아래로 이동
	    innerDiv.scrollTop = innerDiv.scrollHeight;
	} */

	function currentTime() {
		var date = new Date();
		var hh = date.getHours();
		var mm = date.getMinutes();
		var apm = hh > 12 ? "오후" : "오전";
		var th = hh > 12 ? hh - 12 : hh;
		return {
		    apm: apm,
		    th: th,
		    mm: mm
		  };
	}
	

	

	
</script>