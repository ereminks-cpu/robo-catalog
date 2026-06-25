# ROBO Catalog v7.0 — Cloud Storage

Версия переводит новые фотографии роботов в Supabase Storage.

## Что хранится в облаке

- карточки роботов: таблица `public.robots`
- данные вкладок: JSONB-поле `data`
- новые фотографии: Supabase Storage bucket `robot-images`
- ссылка на фото: поле `image`
- путь к файлу в Storage: поле `imagePath`

## Что сделать

1. В Supabase SQL Editor выполнить файл:
   `supabase_storage_setup.sql`

2. На GitHub заменить:
   - `index.html`
   - `style.css`
   - `README.md`

3. Открыть сайт и сделать жесткое обновление:
   - Mac: Cmd + Shift + R
   - Windows: Ctrl + F5

4. Войти как admin/editor.

5. Добавить или заменить фото в карточке робота.

После этого новые фото сохраняются не в браузере, а в Supabase Storage.
