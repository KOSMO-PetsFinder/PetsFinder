<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Pets Finder Admin Page</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="<c:url value='/'/>cssAdmin/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<style>
* {
   font-family:'BM JUA_TTF';
   text-align: center;
}
</style>
</head>
<body class="sb-nav-fixed">
	<jsp:include page="../common/topHeader.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<jsp:include page="../common/leftHeader.jsp"></jsp:include>
		</div>
		<c:forEach items="${ animalList }" var="r">
		<input type="hidden" id="adp_idx_${ r.abani_idx }" value="${ r.member_idx }"/>
		</c:forEach>
		<form name="changeFrm" action="./AdminAdopt/modifyAnimalList" method="GET">
	        <input type="hidden" name="abani_idx" id="idx"/>
	        <input type="hidden" name="abani_stat" id="stat"/>
	        <input type="hidden" name="abani_neut" id="neut"/>
	        <input type="hidden" name="abani_vaccin" id="vaccin"/>
	        <input type="hidden" name="m_idx" id="m_idx"/>
	    </form>
	    <script>
	        function modifyAnimalList(idx) {
	    	    $('#idx').val(idx);
	            var stat = $('#abani_stat_' + idx).val();
	            var neut = $('#abani_neut_' + idx).val();
	            var vaccin = $('#abani_vaccin_' + idx).val();
	            var mem_idx = $('#adp_idx_' + idx).val();
	            $('#stat').val(stat)
	            $('#neut').val(neut)
	            $('#vaccin').val(vaccin)
	            $('#m_idx').val(mem_idx)
	            document.changeFrm.submit();
	        }
	    </script>
		<div id="layoutSidenav_content" style="text-align: center;">
			<div style="margin-top: 50px;">
				<h1>유기동물 목록</h1>
			</div>
			<hr />
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>번호</th>
							<th>종류</th>
							<th>품종</th>
							<th>성별</th>
							<th>나이</th>
							<th>접수일</th>
							<th>발견장소</th>
							<th>특징</th>
							<th>중성화</th>
							<th>백신접종</th>
							<th>입양상태</th>
							<th>업데이트</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>번호</th>
							<th>종류</th>
							<th>품종</th>
							<th>성별</th>
							<th>나이</th>
							<th>접수일</th>
							<th>발견장소</th>
							<th>특징</th>
							<th>중성화</th>
							<th>백신접종</th>
							<th>입양상태</th>
							<th>업데이트</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach items="${animalList }" var="row">
							<tr>
								<td>${row.abani_idx }</td>
								<td>${row.abani_species }</td>
								<td>${row.abani_kind }</td>
								<td>${row.abani_gender }</td>
								<td>${row.abani_age }</td>
								<td>${row.abani_regdate }</td>
								<td>${row.abani_loc }</td>
								<td>${row.abani_char }</td>
								<td><select id="abani_neut_${row.abani_idx }" name="abani_neut">
	                              <option ${row.abani_neut == '1' ? 'selected' : "" } value="1">O</option>
	                              <option ${row.abani_neut == '0' ? 'selected' : "" } value="0">X</option>
	                            </select></td>
								<td><select id="abani_vaccin_${row.abani_idx }" name="abani_vaccin">
	                              <option ${row.abani_vaccin == '1' ? 'selected' : "" } value="1">O</option>
	                              <option ${row.abani_vaccin == '0' ? 'selected' : "" } value="0">X</option>
	                            </select></td>
								<td>
								<c:if test="${ row.adpapl_stt eq 'apl' and row.abani_stat eq 'prtct'}" var="a_stt">
									<select id="abani_stat_${row.abani_idx }" name="abani_stat">
		                              <option ${row.abani_stat == 'prtct' ? 'selected' : "" } value="prtct">보호중</option>
		                              <option ${row.abani_stat == 'adopt' ? 'selected' : "" } value="adopt">입양완료</option>
		                            </select>
								</c:if>
								<c:if test="${ not a_stt }">
									${row.abani_stat == 'prtct' ? '보호중' : '입양완료' }
								</c:if>
	                            </td>
								<td><button type="button" class="btn btn-info btn-sm" 
									onclick="modifyAnimalList(${row.abani_idx });">적용</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- footer -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/scripts.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-area-demo.js"></script>
	<script src="<c:url value='/'/>assetsAdmin/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"	crossorigin="anonymous"></script>
	<script src="<c:url value='/'/>jsAdmin/datatables-simple-demo.js"></script>
</body>
</html>
