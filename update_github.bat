@echo off
:: Step 1: Create the index.html file with your Pit Calculator code
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>Pit Strategy Calculator^</title^>
echo     ^<style^>
echo         * { margin: 0; padding: 0; box-sizing: border-box; }
echo         body { font-family: 'Segoe UI', Arial, sans-serif; background: linear-gradient(135deg, #0a0a0a 0%%, #1a1a1a 100%%^); color: white; min-height: 100vh; padding: 20px; }
echo         .container { max-width: 1000px; margin: 0 auto; }
echo         .header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 30px; }
echo         button { padding: 10px 20px; border: none; border-radius: 8px; font-weight: bold; cursor: pointer; transition: all 0.3s; }
echo         .btn-danger { background: linear-gradient(to bottom, #ff4444, #cc0000^); color: white; border: 2px solid #ff6666; }
echo         .results { background: rgba(0, 0, 0, 0.8^); border: 2px solid #ff4444; border-radius: 12px; padding: 20px; }
echo         input, select { padding: 8px; border-radius: 8px; background: white; color: black; }
echo         .modal { display: none; position: fixed; background: rgba(0, 0, 0, 0.8^); width: 100%%; height: 100%%; top: 0; left: 0; }
echo         @media (max-width: 768px^) { .calculator { display: block; } }
echo     ^</style^>
echo ^</head^>
echo ^<body^>
echo     ^<div class="login-page active" id="loginPage"^>
echo         ^<h1^>Pit Strategy Calculator^</h1^>
echo         ^<input type="email" id="loginEmail" placeholder="Email"^>
echo         ^<button class="btn-danger" onclick="signIn()"^>Sign In^</button^>
echo     ^/div^>
echo     ^<div class="main-app" id="mainApp"^>
echo         ^<button class="btn-danger" onclick="signOut()"^>Sign Out^</button^>
echo         ^<div id="resultsContainer"^>^</div^>
echo     ^/div^>
echo     ^<script^>
echo         const firebaseConfig = { apiKey: "AIzaSyBMZJgCpDCNO0YmbJ2e11LvAQmYcdJMWgE", authDomain: "pitstratergyapp.firebaseapp.com", projectId: "pitstratergyapp", databaseURL: "https://pitstratergyapp-default-rtdb.firebaseio.com" };
echo         function signIn(^) { document.getElementById('loginPage'^).classList.remove('active'^); document.getElementById('mainApp'^).classList.add('active'^); }
echo         function signOut(^) { document.getElementById('mainApp'^).classList.remove('active'^); document.getElementById('loginPage'^).classList.add('active'^); }
echo     ^</script^>
echo ^</body^>
echo ^</html^>
) > index.html

:: Step 2: Push to GitHub
echo Sending to GitHub...
git add index.html
git commit -m "Update index.html file"
git push origin main

echo Everything is done! Your website is updated.
pause