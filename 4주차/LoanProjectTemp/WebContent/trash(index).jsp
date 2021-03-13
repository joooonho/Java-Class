<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">
<!--
게시판 관련 css-->body {
	line-height: 2em;
	font-family: "맑은 고딕";
}

ul, li {
	list-style: none;
	text-align: center;
	padding: 0;
	margin: 0;
}

#mainWrapper {
	width: 800px;
	margin: 0 auto; /*가운데 정렬*/
}

#mainWrapper>ul>li:first-child {
	text-align: center;
	font-size: 14pt;
	height: 40px;
	vertical-align: middle;
	line-height: 30px;
}

#ulTable {
	margin-top: 10px;
}

#ulTable>li:first-child>ul>li {
	background-color: #c9c9c9;
	font-weight: bold;
	text-align: center;
}

#ulTable>li>ul {
	clear: both;
	padding: 0px auto;
	position: relative;
	min-width: 40px;
}

#ulTable>li>ul>li {
	float: left;
	font-size: 10pt;
	border-bottom: 1px solid silver;
	vertical-align: baseline;
}

#ulTable>li>ul>li:first-child {
	width: 10%;
} /*No 열 크기*/
#ulTable>li>ul>li:first-child+li {
	width: 45%;
} /*제목 열 크기*/
#ulTable>li>ul>li:first-child+li+li {
	width: 20%;
} /*작성일 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li {
	width: 15%;
} /*작성자 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li+li {
	width: 10%;
} /*조회수 열 크기*/
#divPaging {
	clear: both;
	margin: 0 auto;
	width: 220px;
	height: 50px;
}

#divPaging>div {
	float: left;
	width: 30px;
	margin: 0 auto;
	text-align: center;
}

#liSearchOption {
	clear: both;
}

#liSearchOption>div {
	margin: 0 auto;
	margin-top: 30px;
	width: auto;
	height: 100px;
}

.left {
	text-align: left;
}

<!--
게시판 관련 css-->.box {
	background-color: gray;
	width: 250px;
	height: 250px;
	margin: 50px auto 50px auto;
}

.head1 {
	text-align: center;
	font-family: 'Balsamiq Sans', cursive;
	flex: 1;
}

.parent {
	text-align: center;
	width: 90%;
	margin: 50px auto;
	display: flex;
}

.first {
	border: 3px solid black;
	flex: 1;
	width: 30%;
	box-sizing: border-box;
}

.second {
	border: 3px solid black;
	flex: 1; #
	margin: 0px 5%;
	width: 30%;
	box-sizing: border-box;
}

.third {
	border: 3px solid black;
	flex: 1;
	width: 30%;
	box-sizing: border-box;
}

.head-div {display = "flex";
	margin: auto;
	width: 50%;
}

.button1 {
	flex: 1;
}
</style>

</head>
<body>

	<div class="head-div">
		<h1 class="head1">기획 재정부</h1>

		<%
		if (session.getAttribute("validMem") != null) {
				String id = (String) session.getAttribute("id");
		%>
		<h2><%=id%>
			님 안녕하세요
		</h2>
		<a class="btn btn-sm btn-outline-secondary" href="logout.jsp">logout</a>
		<form action="myPage.do" method="post">
			<input value="내정보" class="btn btn-sm btn-outline-secondary"
				type="submit"> <input type="hidden" name="id" value="${id }">
		</form>

		<%
		} else {
		%>

		<a class="btn btn-sm btn-outline-secondary" href="login_choice.jsp">Sign
			up</a>

		<%
		}
		%>

	</div>

	<div class="parent">
		<div class="first">
			<a href="small_business.jsp">소상공인</a>
		</div>
		
		<div class="second">중소기업</div>
		<div class="third">일반국민</div>
	</div>

	<div id="mainWrapper">

		<ul>
			<!-- 게시판 제목 -->
			<li>게시판 Title</li>

			<!-- 게시판 목록  -->
			<li>Table
				<ul id="ulTable">
					<li>
						<ul>
							<li>No</li>
							<li>제목</li>
							<li>작성일</li>
							<li>작성자</li>
							<li>조회수</li>
						</ul>
					</li>
					<!-- 게시물이 출력될 영역 -->
					<li>
						<ul>
							<li>1</li>
							<li class="left">제목제목제목제목1</li>
							<li>2021.01.23</li>
							<li>양준호</li>
							<li>0</li>
						</ul>
					</li>

					<li>
						<ul>
							<li>2</li>
							<li class="left">제목제목제목제목1</li>
							<li>2021.01.23</li>
							<li>양준호</li>
							<li>0</li>
						</ul>
					</li>

					<li>
						<ul>
							<li>3</li>
							<li class="left">제목제목제목제목1</li>
							<li>2021.01.23</li>
							<li>양준호</li>
							<li>0</li>
						</ul>
					</li>

					<li>
						<ul>
							<li>4</li>
							<li class="left">제목제목제목제목1</li>
							<li>2021.01.23</li>
							<li>양준호</li>
							<li>0</li>
						</ul>
					<li>
				</ul>
			</li>

			<!-- 게시판 페이징 영역 -->
			<li>
				<div id="divPaging">
					<div>◀</div>
					<div>
						<b>1</b>
					</div>
					<div>2</div>
					<div>3</div>
					<div>4</div>
					<div>5</div>
					<div>▶</div>
				</div>
			</li>

			<!-- 검색 폼 영역 -->
			<li id='liSearchOption'>
				<div>
					<select id='selSearchOption'>
						<option value='A'>제목+내용</option>
						<option value='T'>제목</option>
						<option value='C'>내용</option>
					</select> <input id='txtKeyWord' /> <input type='button' value='검색' />
				</div>
			</li>

		</ul>
	</div>

</body>
</html>