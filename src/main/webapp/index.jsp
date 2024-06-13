<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Basic Web Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: red;
        }
        input[type="text"] {
            padding: 10px;
            margin: 10px 0;
            width: 80%;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        #greeting {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Hello world! My name is MOHANRAAJ 52222222082</h2>
        <form id="nameForm">
            <input type="text" id="nameInput" placeholder="Enter your name" required>
            <br>
            <button type="submit">Submit</button>
        </form>
        <div id="greeting"></div>
    </div>

    <script>
        document.getElementById('nameForm').addEventListener('submit', function(event) {
            event.preventDefault();
            var name = document.getElementById('nameInput').value;
            var greetingDiv = document.getElementById('greeting');
            greetingDiv.textContent = 'Hello, ' + name + '! Welcome to our basic web application.';
        });
    </script>
</body>
</html>

