📘 DJANGO — CLASS NOTES (MAC M1)

⸻

🟢 1. FIRST TIME SETUP

📁 Create & Enter Folder

cd ~/Developer/Thopstech/Django


⸻

🧪 Create Virtual Environment

python3 -m venv .venv


⸻

⚡ Activate Environment

source .venv/bin/activate

✔️ Output:

(.venv)


⸻

📦 Install Django

pip install django


⸻

🏗️ Create Project

django-admin startproject myproject


⸻

📂 Enter Project

cd myproject


⸻

▶️ Run Server

python manage.py runserver

🌐 Open:

http://127.0.0.1:8000/


⸻

🟡 2. SECOND TIME RUN (IMPORTANT)

📁 Go to Project

cd ~/Developer/Thopstech/Django/myproject


⸻

⚡ Activate Environment

source ../.venv/bin/activate


⸻

▶️ Run Server

python manage.py runserver


⸻

🔵 3. CREATE APP

python manage.py startapp app1


⸻

⚙️ 4. REGISTER APP

📂 Open: settings.py

INSTALLED_APPS = [
    'app1',
]


⸻

🔁 5. MIGRATIONS

python manage.py migrate


⸻

🌐 6. BASIC VIEW

📂 app1/views.py

from django.http import HttpResponse

def home(request):
    return HttpResponse("Hello Django 🚀")


⸻

🔗 7. CONNECT URL

📂 myproject/urls.py

from django.contrib import admin
from django.urls import path
from app1 import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home),
]


⸻

▶️ 8. RUN AGAIN

python manage.py runserver

👉 Output:

Hello Django 🚀


⸻

🧠 STRUCTURE

Django/
│
├── .venv/
├── myproject/
│   ├── manage.py
│   ├── myproject/
│   └── app1/


⸻

⚠️ RULES (REMEMBER)

✔️ Always activate venv
✔️ Always run inside project folder
✔️ Use python3 (Mac)

⸻

🔥 QUICK REVISION

First Time

python3 -m venv .venv
source .venv/bin/activate
pip install django
django-admin startproject myproject
cd myproject
python manage.py runserver


⸻

Second Time

cd myproject
source ../.venv/bin/activate
python manage.py runserver
