# Katkı Rehberi

## Yeni kaynak önerme

1. `turkmeme/sources.md` dosyasını aç.
2. Doğru havuza ekle:
   - **Havuz A**: kullanıcının kişisel mizah zevki profili (hesap, dizi,
     karakter ismi).
   - **Havuz B/C**: genel Türk internet/meme keşif alanı.
   - **Kültleşmiş liste**: herkesin anında tanıyacağı klasik (dizi, film,
     karakter).
3. Virgülle ayrılmış tek satır formatını koru, madde listesine çevirme.
4. Generic uluslararası reaction (Minions, stock "LOL" GIF) hiçbir havuza
   eklenmez.

## Davranış kuralı değişikliği

`turkmeme/SKILL.md` değiştiren PR açarken:

- Hangi bölümü neden değiştirdiğini PR açıklamasında yaz.
- Mevcut format koru: madde listesi, kalın terim + açıklama.
- `version` alanını `SKILL.md` frontmatter'da artır (patch: kural netleştirme,
  minor: yeni davranış/bölüm, major: felsefe değişikliği).
- `CHANGELOG.md`'ye satır ekle.

## PR kontrol listesi

- [ ] `sources.md` formatı bozulmadı (tek satır, virgülle ayrılmış)
- [ ] `SKILL.md` frontmatter geçerli (`name`, `description`, `version` var)
- [ ] `CHANGELOG.md` güncellendi
- [ ] Değişiklik gerçek Türk internet/meme kültürüne dayanıyor, uydurma değil
