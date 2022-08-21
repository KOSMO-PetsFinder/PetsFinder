<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
*{
	font-family: 'BM JUA_TTF';
}
a {
	text-decoration: none;
	color: #75c9ba
}
textarea {
	font-size: 1.2em; 
	width: 100%; 
	height: 300px; 
	border: 0; 
	font-family: 'BM JUA_TTF'; 
	overflow: hidden; 
	background:none; 
	resize:none;
	min-height: 18rem;
    overflow-y: hidden;
    outline: none;
}
</style>
<c:if test="${ mode eq 'adp' }">
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 내가 쓴 글 보기 > 입양 후기</p>
</div>
</c:if>
<c:if test="${ mode eq 'sit' }">
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 내가 쓴 글 보기 > 시터 후기</p>
</div>
</c:if>
<c:if test="${ myReview ne null }">
<div style="display: flex; justify-content: right; color: #CCCCCC; padding-top: 55px; margin-top: 50px">
	<img src="./images/mypage_color.png" alt="" style="width:30px; height:25px; padding-right: 5px">
	<p style="margin-top:9px;">마이페이지 > 내가 쓴 글 보기 > 후기 수정</p>
</div>
</c:if>
<c:if test="${ adp eq null and sit eq null and myReview eq null }">
<div style="display: flex; flex-direction: row; justify-content: center">
	<img width="200" height="200" src="<c:url value='/'/>images/no_reivew.png" style="object-fit: cover; border-radius: 50%;">
</div>
</c:if>
<div style="display:flex; justify-content: center;">
	<div style="display: flex; flex-direction: column; border-top: 2px solid #75c9ba; padding: 38px 0px; margin-top: 100px; width: 800px;">
	<c:if test="${ adp ne null }">
		<c:forEach items="${ adp }" var="ad">
		<div style="padding-bottom: 20px; border-bottom: 1px solid #75c9ba; margin-bottom: 20px">
			<div style="display: flex; flex-direction: row; align-items: center; border-bottom: 1px solid #cccccc;">
				<c:if test="${ ad.member_photo ne null and ad.member_photo ne ''}" var="result">
				<img width="50" height="50" src="<c:url value='/'/>Uploads/${ ad.member_photo }" style="object-fit: cover; border-radius: 50%;">
				</c:if>
				<c:if test="${ not result }">
				<img width="50" height="50" src="<c:url value='/'/>images/No_profile.png" style="object-fit: cover; border-radius: 50%;">
				</c:if>
				<div style="margin-left: 18px;">
					<p
						style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">
						${ ad.member_namer }</p>
					<p
						style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">
						${ ad.review_regdate }
					</p>
				</div>
			</div>	
			<div style="display: flex; flex-direction: row; margin-bottom: 50px;">
				<p style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">${ ad.review_content }</p>
			</div>
			<div style="display: flex; justify-content: space-between;">
				<div>
					<a href="<c:url value="/"/>AbandonedAnimal/adoptView.do?abani_idx=${ad.abani_idx}" target="_blank">목록보기</a>
				</div>
				<div>
					<a href="./myReview?mode=up&r=adp&review_idx=${ ad.review_idx }" style="padding-right: 10px">수정</a>
					<a href="./myReview?mode=del&r=adp&review_idx=${ ad.review_idx }">삭제</a>
				</div>
			</div>
		</div>
		</c:forEach>
	</c:if>
	<c:if test="${ sit ne null }">
		<c:forEach items="${ sit }" var="sit">
		<div style="padding-bottom: 20px; border-bottom: 1px solid #75c9ba; margin-bottom: 20px">
			<div style="display: flex; flex-direction: row; align-items: center; border-bottom: 1px solid #cccccc;">
				<c:if test="${ sit.member_photo ne null and sit.member_photo ne ''}" var="result">
				<img width="50" height="50" src="<c:url value='/'/>Uploads/${ sit.member_photo }" style="object-fit: cover; border-radius: 50%;">
				</c:if>
				<c:if test="${ not result }">
				<img width="50" height="50" src="<c:url value='/'/>images/No_profile.png" style="object-fit: cover; border-radius: 50%;">
				</c:if>
				<div style="margin-left: 18px;">
					<p
						style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">
						${ sit.member_namer }</p>
					<p
						style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">
						${ sit.review_regdate }
					</p>
				</div>
			</div>	
			<div style="display: flex; flex-direction: row; margin-bottom: 50px;">
				<p style="font-size: 15px; line-height: 25px; color: rgb(76, 80, 86); margin-top: 18px;">${ sit.review_content }</p>
			</div>
			<div style="display: flex; justify-content: space-between;">
				<div>
					<a href="<c:url value="/"/>/Petsitters/sitterView.do?sit_idx=${sit.sit_idx }&member_idx=${idx}" target="_blank">목록보기</a>
				</div>
				<div>
					<a href="./myReview?mode=up&r=sit&review_idx=${ sit.review_idx }" style="padding-right: 10px">수정</a>
					<a href="./myReview?mode=del&r=sit&review_idx=${ sit.review_idx }">삭제</a>
				</div>
			</div>
		</div>
		</c:forEach>
	</c:if>
	<c:if test="${ myReview ne null }">
		<script>
		function review_update() {
			document.Up_review.submit();
		}
		</script>
		<form name="Up_review" action="./upReview" method="POST">
			<input type="hidden" name="review_idx" value="${ myReview.review_idx }"/>
			<input type="hidden" name="r_where" value="${ r }"/>
			<div style="display: flex; flex-direction: row; align-items: center; border-bottom: 1px solid #cccccc;">
				<c:if test="${ myReview.member_photo ne null and myReview.member_photo ne ''}" var="result">
				<img width="50" height="50" src="<c:url value='/'/>Uploads/${ myReview.member_photo }" style="object-fit: cover; border-radius: 50%;">
				</c:if>
				<c:if test="${ not result }">
				<img width="50" height="50" src="<c:url value='/'/>images/No_profile.png" style="object-fit: cover; border-radius: 50%;">
				</c:if>
				<div style="margin-left: 18px;">
					<p
						style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; color: rgb(56, 60, 72);">
						${ myReview.member_namer }</p>
					<p
						style="font-size: 13px; line-height: 19px; color: rgb(76, 80, 86); margin-top: 6px;">
						${ myReview.review_regdate }
					</p>
				</div>
			</div>
			<div style="display: flex; flex-direction: row; margin-bottom: 50px; margin-top: 20px">
				<textarea name="review_content">${ myReview.review_content }</textarea>
			</div>
			<div style="display: flex; justify-content: space-between;">
				<div>
					<a style="padding-right: 10px; background: none; border: none; cursor: pointer;" onclick="review_update();">수정</a>
					<a href="./myReview?mode=del&review_idx=${ myReview.review_idx }">삭제</a>
				</div>
			</div>
		</form>
	</c:if>
	<c:if test="${ adp eq null and sit eq null and myReview eq null }">
		<div style="display: flex; flex-direction: row; justify-content: center">
			<p style="font-size: 2em">작성한 리뷰가 없어요.. ㅠ ㅠ</p>
		</div>
	</c:if>
	</div>
</div>