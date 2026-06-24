-- Выполнить в Supabase SQL Editor для работы админки v6.0
drop policy if exists "profiles_insert_own" on profiles;
create policy "profiles_insert_own" on profiles for insert to authenticated with check (id = auth.uid());

drop policy if exists "profiles_admin_read_all" on profiles;
create policy "profiles_admin_read_all" on profiles for select to authenticated using (
  exists (select 1 from profiles p where p.id = auth.uid() and p.role = 'admin')
);

drop policy if exists "profiles_admin_write_all" on profiles;
create policy "profiles_admin_write_all" on profiles for all to authenticated using (
  exists (select 1 from profiles p where p.id = auth.uid() and p.role = 'admin')
) with check (
  exists (select 1 from profiles p where p.id = auth.uid() and p.role = 'admin')
);
