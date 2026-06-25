# ROBO Catalog v9.8 — Safe Init Fix

Исправлено:
- ошибка `Cannot set properties of null (setting 'onclick')`;
- инициализация кнопок теперь безопасная: отсутствующий элемент не ломает весь сайт;
- каталог снова должен загружать роботов из Supabase;
- добавлено видимое сообщение, если Supabase не отдаёт таблицу `robots`.

На GitHub заменить:
- index.html
- style.css
- README.md

SQL повторять не нужно.
После публикации: Cmd + Shift + R.
