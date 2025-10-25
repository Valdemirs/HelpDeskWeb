<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Equipe.aspx.cs" Inherits="HelpDeskWeb.Equipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Equipe de Suporte</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f6f8;
      margin: 0;
      padding: 0;
    
    }

    .body {
      max-width: 800px;
      margin: 40px auto;
      background-color: #ffffff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

      h2 {
          color: #2c3e50;
          font-size: 24px;
          margin-bottom: ;
          border-bottom: 2px solid #3498db;
          padding-bottom: 10px;
          display: flex;
          justify-content: center;
          margin-bottom:50px;
      }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    ul {
      list-style-type: none;
      padding: 0;
    }

    li {
      background-color: #ecf0f1;
      margin-bottom: 10px;
      padding: 15px;
      border-radius: 5px;
      font-size: 16px;
      display: flex;
      justify-content: space-between;
      align-items: 
    }

    li::before {
      content: "👤";
      margin-right: 10px;
    }

    .avaliacao {
      font-weight: bold;
      color: #27ae60;
    }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="body">
            <h2>Equipe de suporte</h2>
            <table>
                <tr>
                    <td>
                        <ol>
                            
                            <li>Daniel - estagiario - 92 % avalião</li>        
                            <li>Gabriel - N1 -  95% avalião  </li>
                            <li>Lucas  - N2 -  98% avalião</li>
                            
                        </ol>
                    </td>
                </tr>
            </table>
            </div>         
        </div>
    </form>
</body>
</html>
