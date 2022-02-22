<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/fullcalendar/lib/main.css"/>
<script src="${pageContext.request.contextPath }/resources/fullcalendar/lib/main.js"></script>   
<script src="${pageContext.request.contextPath }/resources//assets/js/vendor/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar: {
				left: 'prev,next today',
				center: 'title',
				right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
			},
			locale: 'ko', // 한국어
			navLinks: true, // 날짜를 선택하면 Day 캘린더나 Week 캘린더로 링크
			selectable: true, 
			selectMirror: true,
			select: function(arg) { // 캘린더에서 드래그로 이벤트를 생성할 수 있다.
				
				var title = prompt('추가할 일정을 입력하세요.');
				if (title) {
					var c_start = arg.start.getFullYear()+"-"+(arg.start.getMonth() + 1)+"-"+arg.start.getDate();
					var c_end = arg.end.getFullYear()+"-"+(arg.end.getMonth() + 1)+"-"+arg.end.getDate();
					$.ajax({
						type: "get",
						url: "/markbook/mk_calendar/insertCal",
						contentType: "application/json; charset=utf-8",
						data : {"title" : title,  "start" : c_start, "end" : c_end},
						success: function() {
							alert("일정이 추가되었습니다.");
							calendar.addEvent({
								title: title,
								start: arg.start,
								end: arg.end,
								allDay : true
							})
						},
						error: function(data) {
							console.log(data);
						}
					})
				}
				calendar.unselect()
			},
			eventClick: function(arg) {
				if(confirm('해당 이벤트를 지우시겠습니까?')) {
					// 해당 이벤트가 개인 이벤트인지 체크
					arg.event.remove();
				}
			},
			editable: true, 
			dayMaxEvents: true, // allow "more" link when too many events 
			events: function(info, successCallback, failureCallback) {
				$.ajax({
					type: "get",
					url: "/markbook/mk_calendar/selectCal",
					dataType: "JSON",
					contentType: "application/json; charset=utf-8",
					success: function(data) {
						var events = [];
					
						$.each(data, function (idx, item) {
							var id = data[idx].id;
							var start = data[idx].start;
							var end = data[idx].end;
							var title = data[idx].title;
							var bgColor = data[idx].backgroundColor;
							var textColor = data[idx].textColor;
							
							if (bgColor == undefined) {
								events.push({
									id : id,
									start : start,
									end : end,
									title : title,
									allDay : true
								});
							}
							else {
								events.push({
									id : id,
									start : start,
									end : end,
									title : title,
									backgroundColor : bgColor,
									textColor : textColor,
									allDay : true
								});
							}
						}); // each
						
						console.log(events);
						successCallback(events);
					}
				})
			}
		});
		calendar.render();
	});
</script>

<div id="calendar"></div>

