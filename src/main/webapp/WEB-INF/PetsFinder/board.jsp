<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- UIkit JS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/css/uikit.min.css" />
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<!-- icon -->
<script src="https://kit.fontawesome.com/54b3b8eebf.js" crossorigin="anonymous"></script>
<title>PetsFinder</title>
</head>
<body>
<style>
    a {
      text-decoration: none;
    }
    p {
      margin: 0;
    }
    /* FAQ */
    li.uk-parent {
      /* border-top: 1px solid #cccccc; */
      border-bottom: 1px solid #cccccc;
      margin: 0;
    }
    li.uk-parent a {
      padding: 12px 0 12px 20px;
      color: black;
    }
    ul.uk-nav-sub {
      background-color: #fcfcfc;
      border-top: 1px solid #CCCCCC
    }
    ul.uk-nav-sub a {
      padding: 10px 0 10px 0;

    }
    ul.uk-nav-sub li {
      list-style: none;
    }
    ul.uk-nav-sub li::marker {
      color: gray;
    }
    .uk-nav-default .uk-nav-sub a {
      color: black;
    }
    tr{
      text-align: center;
    }
    .mybox{
      padding: 10;
      background-color: #f4f5f9;
      height: 150px;
      width: 660px;
    }
    .side_menu {
      height: 65.5px;
      font-size: 17px;
    }
	pre {
		white-space: pre-wrap;
		word-break: break-all;
		over-flow: auto;
		border: none;
		background: none;
	}
	#like {
		border: 0;
		background: none;
	}
	#hate {
		border: 0;
		background: none;
	}
	img {
		max-width: none;
	}
	.select {
		appearance: none;
		width: 100px;
		height: 35px;
		background: url('../images/arrow_down_gray.png') calc(100% - 5px) center no-repeat;
		background-size: 20px;
		padding: 5px 30px 5px 10px;
		border-radius: 4px;
		outline: 0 none;
	}
	input:-internal-autofill-selected {
		background: none;
	}
</style>
<script>
  function FAQ01(){
      var main01 = document.getElementById("customer");
      var main02 = document.getElementById("petsitters");
      var con01 = document.getElementById("Qna");
      var con02 = document.getElementById("FAQ")
      if(con01.style.display=='none') {
        main01.style.backgroundColor = '#75c9ba'
        main01.style.color = 'white'
        main02.style.backgroundColor = 'white'
        main02.style.color = 'black'
        if(con02.style.display != 'none'){
          con02.style.display = 'none'
          con01.style.display = 'flex';
        } else {
          con01.style.display = 'flex';
        }
      } else {
        main01.style.backgroundColor = 'white'
        main01.style.color = 'black'
        con01.style.display = 'none';
      }
    }
    function FAQ02(){
      var main01 = document.getElementById("customer");
      var main02 = document.getElementById("petsitters");
      var con01 = document.getElementById("Qna");
      var con02 = document.getElementById("FAQ")
      if(con02.style.display=='none') {
        main02.style.backgroundColor = '#75c9ba'
        main02.style.color = 'white'
        main01.style.backgroundColor = 'white'
        main01.style.color = 'black'
        if(con01.style.display != 'none'){
          con01.style.display = 'none'
          con02.style.display = 'flex';
        } else {
          con02.style.display = 'flex';
        }
      } else {
        main02.style.backgroundColor = 'white'
        main02.style.color = 'black'
        con02.style.display = 'none';
      }
    }
</script>

<script>
function deleteqna(qna_idx){
	if(confirm("삭제하시겠습니까?")){
		location.href="./deleteqna?qna_idx="+qna_idx;
	}
}
</script>
<jsp:include page="./common/Header.jsp" />
<!-- FAQ -->
<div style="padding-top: 100px; display: flex; justify-content: center;">
    <!-- FAQ_button -->
    <div style="display: flex; justify-content: center; align-items: center; width: 1024px;">
	    <a href="javascript:FAQ01();" id="customer" type="button" style="width: 250px; height: 70px; border-radius: 7px; margin-top: 90px; margin-right: 40px; border: 1px solid #CCCCCC; font-size: 20px; color: black;">
     		<p style="display: flex; justify-content: center; height:100%; padding-top: 20px">Q & A</p>
	    </a>
	    <a href="javascript:FAQ02()" id="petsitters" type="button" style="width: 250px; height: 70px; border-radius: 7px; margin-top: 90px; margin-right: 40px; border: 1px solid #CCCCCC; font-size: 20px; color: black">
      		<p style="display: flex; justify-content: center; height:100%; padding-top: 20px">FAQ</p>
	    </a>
    </div>
</div>


<!-- QnA -->
<div style="display: flex; justify-content: center; margin-left: -250px">
	<!-- Qna -->
    <div id="Qna" style="margin-left: -100px; margin-top: 100px; display: flex;">
		<div class="uk-width-1-2@s uk-width-2-5@m" style="margin-left: 350px; border-top: 1px solid #cccccc; width: 1024px;">
	        <ul class="uk-nav-default uk-nav-parent-icon" uk-nav style="width: 1024px;">
			<c:choose>
				<c:when test="${ empty qnaAll }">
		        <li class="uk-parent" >
					<a href="#" class="side_menu">
					 <div style="display: flex; justify-content: space-between; ">
					<p style="font-family: 'BM JUA_TTF';">제목이 없어요..ㅠ.ㅠ</p>
					 </div>
					</a>
					<ul class="uk-nav-sub">
						<div style="padding-bottom: 20px; background-color: #fcfcfc;">
							<p id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px; font-family: 'BM JUA_TTF';">내용이 없어요..ㅠ.ㅠ</p>
						</div>
					</ul>
				</li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${ qnaAll }" var="row" varStatus="loop">
				<li class="uk-parent" >
					<a href="${row.qna_idx }" class="side_menu" style="font-family: 'BM JUA_TTF';">
						<div style="display: flex; width:50%; justify-content: space-between;">
							<p style="font-family: 'BM JUA_TTF';">${ row.qna_title }</p>
						</div>
						<div style="width:50%; float: right;">
						<c:if test="${row.qna_stt eq 'Inc' }">
						<span style="float:right;" class="badge rounded-pill bg-secondary">답변미완료</span>
						</c:if>
						<c:if test="${row.qna_stt eq 'com' }">
						<span style="float:right;" class="badge rounded-pill bg-info">답변완료</span>
						</c:if>
						</div>
					</a>
					<ul class="uk-nav-sub">
					  	<div style="padding-bottom: 20px; background-color: #fcfcfc; display: flex; flex-direction: column; justify-content: space-between;">
					  		<div style="display: flex; justify-content: space-between; align-items: center;">
					  			<div style="width: 900px">
					  			<c:if test="${row.qna_OPENSTATUS eq 'pri'}">
					  			<c:choose>
					  				<c:when test="${row.member_idx eq sessionScope.idx }">
									<pre id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px; font-family: 'BM JUA_TTF';">${ row.qna_content }</pre>
									</c:when>
									<c:otherwise>
									<pre id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px; font-family: 'BM JUA_TTF';">비공개 게시물 입니다.</pre>
									</c:otherwise>
								</c:choose>
								</c:if>
								<c:if test="${row.qna_OPENSTATUS eq 'pub' }">
									<pre id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px; font-family: 'BM JUA_TTF';">${ row.qna_content }</pre>
								</c:if>
					  			</div>
					  		</div>
						</div>
						<hr style="margin-top: 100px;"/>
						<div style="margin-top: 50px; display: flex; justify-content: space-between;">
						<c:if test="${row.qna_OPENSTATUS eq 'pub'}">
					  			<pre id="content" name="content" style="outline: none; margin-bottom: 50px; padding: 0 12px; font-family: 'BM JUA_TTF';">${row.qnacomm_content }</pre>
					  	</c:if>
						<c:if test="${row.qna_OPENSTATUS eq 'pri' and row.member_idx eq sessionScope.idx}">
					  			<pre id="content" name="content" style="outline: none; margin-bottom: 50px; padding: 0 12px; font-family: 'BM JUA_TTF';">${row.qnacomm_content }</pre>
					  	</c:if>
							<!-- file 관련 -->
							<c:if test="${ not empty FAQ01.ofile }">
							<div style="display: flex; justify-content: flex-start;">
								<img src="../Uploads/${ FAQ01.sfile }" alt="" width="200px"/>
							</div>
							</c:if>
							<!-- 버튼 관련 -->
							<c:if test="${ sessionScope.idx eq row.member_idx  }" var="result">
							<form style="display: flex; justify-content: flex-end;">
								<div style="margin-top: 30px;">
									<input type="button" onclick="location.href='./editqna?qna_idx=${ row.qna_idx }'" value="수정하기" style="border: 0; background: none; color: black; padding-right: 20px; width: 60px;" />
									<input type="button" onclick="javascript:deleteqna(${row.qna_idx});" value="삭제하기" style="border: 0; background: none; color: black; width: 60px;" />
								</div>
							</form>
							</c:if>
						</div>
					</ul>
	           </li>	
					</c:forEach>
				</c:otherwise>
			</c:choose>
	        </ul>
	       	<!-- 페이지 번호 -->
			<div class="row mt-3">
		        <ul class="pagination justify-content-center">
		        	${ pagingImg }
		        </ul>
			</div>   
		    <c:if test="${not empty sessionScope.id }" var="mem">
				    <div style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
				        <a href="./writeQNA" style="text-align:center;padding-top:10px; color: #81A3F0; font-weight: bold; width: 120px; height:45px; border: 1px solid #81A3F0; border-radius: 20px">작성하기</a>
			        </div>
		        </c:if>
		        <c:if test="${not mem }">
					<div style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
						<a href="./Login" style="text-align:center;padding-top:10px; color: #81A3F0; font-weight: bold; width: 120px; height:45px; border: 1px solid #81A3F0; border-radius: 20px">로그인</a>
					</div>
				</c:if>
		</div>
    </div>
    <!-- FAQ -->
    <div id="FAQ" style="margin-left: -100px; margin-top: 100px; display: none">
   		<div class="uk-width-1-2@s uk-width-2-5@m" style="margin-left: 350px; border-top: 1px solid #cccccc; width: 1024px;">
	        <ul class="uk-nav-default uk-nav-parent-icon" uk-nav style="width: 1024px;">
			<c:choose>
				<c:when test="${ empty faqlist }">
		        <li class="uk-parent" >
					<a href="#" class="side_menu">
						<div style="display: flex; justify-content: space-between;">
							<p style="font-family: 'BM JUA_TTF';">제목이 없어요..ㅠ.ㅠ</p>
						</div>
					</a>
					<ul class="uk-nav-sub">
						<div style="padding-bottom: 20px; background-color: #fcfcfc;">
							<p id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px; font-family: 'BM JUA_TTF';">내용이 없어요..ㅠ.ㅠ</p>
						</div>
			          	<div style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
							<a href="javascript:login();" style="color: black;">로그인</a>
					  	</div>
					</ul>
				</li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${ faqlist }" var="fq" varStatus="loop">
				<li class="uk-parent" >
					<a href="#" class="side_menu" style="font-family: 'BM JUA_TTF';">
						<div style="display: flex; justify-content: space-between;">
							<p style="font-family: 'BM JUA_TTF';">${ fq.faq_question }</p>
						</div>
					</a>
					<ul class="uk-nav-sub">
					  	<div style="padding-bottom: 20px; background-color: #fcfcfc; display: flex; flex-direction: column; justify-content: space-between;">
					  		<div style="display: flex; justify-content: space-between; align-items: center;">
					  			<div style="width: 900px">
									<pre id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px; font-family: 'BM JUA_TTF';">${ fq.faq_answer }</pre>
					  			</div>
					  		</div>
						</div>
						<div style="margin-top: 50px; display: flex; justify-content: space-between;">
							<!-- file 관련 -->
							<c:if test="${ not empty FAQ02.ofile }">
							<div style="display: flex; justify-content: flex-start;">
								<img src="../Uploads/${ fq.sfile }" alt="" width="200px"/>
							</div>
							</c:if>
							<%-- <!-- 버튼 관련 -->
							<c:if test="${ sessionScope.u_id eq 'masterratte' }" var="result">
							<form style="display: flex; justify-content: flex-end;">
								<div style="margin-top: 150px;">
									<input type="button" onclick="location.href='./editFAQ02?num=${ FAQ02.num }'" value="수정하기" style="border: 0; background: none; color: black; padding-right: 20px; width: 60px;" />
									<input type="button" onclick="location.href='./deleteFAQ02?num=${ FAQ02.num }'" value="삭제하기" style="border: 0; background: none; color: black; width: 60px;" />
								</div>
							</form>
							</c:if> --%>
						</div>
					</ul>
	           </li>				
					</c:forEach>
				</c:otherwise>
			</c:choose>
	        </ul>
	      <%--  	<!-- 페이지 번호 -->
			<div class="row mt-3">
		        <ul class="pagination justify-content-center">
		        	${ map02.pagingImg02 }
		        </ul>
			</div>
			<c:if test="${ sessionScope.u_id eq 'masterratte' }">
		    <div style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
		        	<a href="./writeFAQ02" style="text-align:center; padding-top:10px; color: #81A3F0; font-weight: bold; width: 120px; height:45px; border: 1px solid #81A3F0; border-radius: 20px">작성하기</a>
			</div>
		    </c:if> --%>
   		</div>
    </div>
    <!-- Q&A -->
    <%-- <div id="Q&A" style="margin-left: -100px; margin-top: 100px; display: flex;  flex-direction: column;">
		<!-- 검색폼 -->
		<form method="get">
		<div style="display: flex; justify-content: right; margin-bottom: 10px;">
			<select class="select" name="searchColumn" style="margin-right: 10px; border: 1px solid #cccccc">
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			<div style="border: 1px solid #cccccc; align-items: center;">
				<input type="text" name="searchField" style="margin-right: 10px; border: 0; outline: none; background-color: white;"/>
				<button type="submit" style="border: 0; background: none"><i style="margin-top: 7px"; class="fa-solid fa-magnifying-glass"></i></button>
			</div>
		</div>	
		</form>
	    <div style="margin-left: 350px; border-top: 1px solid #cccccc; width: 1024px;">
	        <ul uk-nav style="width: 1024px;">
			<c:choose>
				<c:when test="${ empty qnalist }">
		        <li class="uk-parent" >
					<a href="#" class="side_menu">
					 <div style="display: flex; justify-content: space-between; ">
					<p style="font-family: 'BM JUA_TTF';">제목이 없어요..ㅠ.ㅠ</p>
					 </div>
					</a>
					<ul class="uk-nav-sub">
						<div style="padding-bottom: 20px; background-color: #fcfcfc;">
							<p id="content" name="content" style="outline: none; margin-top: 20px; padding: 0 12px; font-family: 'BM JUA_TTF';">내용이 없어요..ㅠ.ㅠ</p>
						</div>
			          	<div style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
							<a href="javascript:login();" style="color: black;">로그인</a>
					  	</div>
					</ul>
				</li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${ qnalist }" var="row" varStatus="loop">
				<li style="border-top: 1px solid #cccccc;">
					<a href="./QNA?${ searchTxt }qna_idx=${ row.qna_idx }&nowPage=${ nowPage }" style="font-family: 'BM JUA_TTF'; display: flex; justify-content: space-between;">
						<div style="display: flex; justify-content: space-between; margin-left: 20px; margin-top: 20px; font-size: 20px">
							<p style="font-family: 'BM JUA_TTF';">${ totalCount - (((nowPage) * pageSize) + loop.index) }.</p>
							<p style="font-family: 'BM JUA_TTF';">${ row.qna_title }</p>
						</div>
						<div style="padding-top: 10px; display:flex; width: 80px; justify-content: flex-end">
							<img src="./images/id_icon01.png" alt="" style="width: 20px; height: 20px;"/>
							<p style="margin-left: 10px">${ QNA.visitcount }</p>
						</div>
					</a>
					<div style="display: flex; justify-content: flex-end">
						<p style="font-family: 'BM JUA_TTF';">${ QNA.id }</p>
					</div>
	           </li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
	        </ul>
	        <!-- 페이지 번호 -->
			<div class="row mt-3">
		        <ul class="pagination justify-content-center">
		        	${ pagingImg }
		        </ul>
			</div>
				<c:if test="${not empty sessionScope.id }" var="mem">
				    <div style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
				        <a href="./QnaWrite" style="text-align:center;padding-top:10px; color: #81A3F0; font-weight: bold; width: 120px; height:45px; border: 1px solid #81A3F0; border-radius: 20px">작성하기</a>
			        </div>
		        </c:if>
		        <c:if test="${not mem }">
					<div style="display: flex; justify-content: right; width: 1000px; margin-top: 50px">
						<a href="javascript:login();" style="text-align:center;padding-top:10px; color: #81A3F0; font-weight: bold; width: 120px; height:45px; border: 1px solid #81A3F0; border-radius: 20px">로그인</a>
					</div>
				</c:if>
	    </div>
    </div> --%>
</div>
<div style="margin-top: 200px"></div>
<jsp:include page="./common/foot.jsp" />
</body>
</html>
