<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
    <head>
        <title>Meal list</title>
            <style>
                .normal { color: green; }
                .exceeded { color: red; }
            </style>
    </head>
<body>
    <section>
        <h2><a href="index.html">Home</a></h2>
        <hr>
        <h3>Meal list</h3>
        <hr>
           <table border="1" cellpadding="8" cellspacing="0">
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Calories</th>
                </tr>
                </thead>
                <c:forEach items="${requestScope.meals}" var="meal">
                    <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
                    <tr class="${meal.excess ? 'excess' : 'normal'}">
                        <td>
                                <%--${meal.dateTime.toLocalDate()} ${meal.dateTime.toLocalTime()}--%>
                                <%--<%=TimeUtil.toString(meal.getDateTime())%>--%>
                        </td>
                        <td>${meal.description}</td>
                        <td>${meal.calories}</td>
                    </tr>
                </c:forEach>
            </table>
    </section>
</body>
</html>