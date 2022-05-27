<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
<form action="/calculator" method="post">
    <div class="content">
        <h3>Calculator</h3>
        <div class="first">
            <span>First Operand: </span>
            <label name="first-operand" type="number" placeholder="Input First Operand" ></label>
        </div>
        <div class="operator">
            <span>Operator: </span>
            <label for="">
                <select name="operator" id="">

                </select>
            </label>
        </div>
    </div>
</form>
</body>
</html>
