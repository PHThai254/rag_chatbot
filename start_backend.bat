@echo off
cd backend
IF NOT EXIST venv (
    python -m venv venv
    call venv\Scripts\activate
    pip install -r requirements.txt
) ELSE (
    call venv\Scripts\activate
)
python manage.py runserver --noreload