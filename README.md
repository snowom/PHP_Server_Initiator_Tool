# PHP Server Initiator Tool

<p>
  Launch PHP Server locally with just 2 clicks!
</p>
<br>
<p>
  This is an option for those who are too lazy to write the command to start PHP Local Server every time it is needed. 😜
  <br>
  In fact, this script will executes the <strong><i>php -S localhost:YOUR_PORT</i></strong> command from the directory and on the port configured by the user.
</p>
<br>

## How to Configure

<p>
  Open the batch file in a text editor of your choice (Notepad, VS Code, etc...) and find the block that starts on line 22 of the code.
  <br>
  <br>
  On line 23, change the value of the <strong>language variable</strong> to the following values according to your language:
  <ul>
    <li><strong>pt-BR</strong> to set in Brazilian Portuguese (this is the default language because i'm brazilian hehehe);</li>
    <li><strong>en</strong> to set in english;</li>
    <li><strong>es</strong> to set in spanish;</li>
  </ul>
  If the variable language is empty or different from the options above, the script will be in the default language.
  
 <br>
 <br>
 On line 24, change the value of the <strong>start_path variable</strong> to the full path of the folder where you want to consider the root directory to run the PHP files.
 <br>
 For example, if you set <strong>start_path</strong> to <i>"C:\Users\Thomaz\Projetos_PHP"</i>, all PHP files that are inside that directory can be executed.
 <br>
 If the path specified in the start_path variable <b>does not exist or is invalid</b>, the script will display a message stating that the path is invalid and will terminate.
 
 <br>
 <br>
 On line 25, change the value of the <b>port variable</b> to the port you want to run the PHP Server.
 <br>
 <b>ATTENTION:</b> The value of the <b>variable port</b> must be declared as a number (without quotes) and not as a string.
</p>

<br>
>"I will always choose a lazy person to do a difficult job because he will find an easy way to do it." - Bill Gates
 
