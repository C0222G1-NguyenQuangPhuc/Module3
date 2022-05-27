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
            <input name="first-operand" type="number" placeholder="Input First Operand" ></input>
        </div>
        <div class="operator">
            <span>Operator: </span>
            <label for="">
                <select name="operator" id="">
                    <option value="+">Addition</option>
                    <option value="-">Subtraction</option>
                    <option value="*">Multiple</option>
                    <option value="/">Division</option>
                </select>
            </label>
        </div>
        <div class="second">
            <span>Second Operand: </span>
            <input name="second-operand" type="number" placeholder="Input Second Operand" ></input>
        </div>
        <input type="submit" value="Submit">
        <p>Result : ${result}</p>
    </div>
</form>
</body>
</html>
