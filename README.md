# ROBO Catalog v6.3 — Final Supabase Fix

Исправлена ошибка:
`Identifier 'supabase' has already been declared`

Что изменено:
- `const supabase = ...` заменено на `const sbClient = ...`
- все обращения `supabase.from(...)`, `supabase.auth...` заменены на `sbClient...`

Заменить на GitHub:
- index.html
- style.css
- README.md

После публикации:
- Mac: Cmd + Shift + R
- Windows: Ctrl + F5

Контрольная проверка в исходном коде страницы:
- не должно быть `const supabase=`
- должно быть `const sbClient=`
