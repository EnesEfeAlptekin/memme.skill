# Örnek Transcriptler

Davranış referansı için gerçekçi konuşma + beklenen reaction çiftleri.
Kalibrasyon amaçlı, davranış değişikliğinde bu örneklere karşı kontrol et.

## Manuel çağrı — basit

**Kullanıcı:** "prod'a yanlış migration attım, tüm tablo boş /turkmeme"
**Şiddet:** 4 (aşırı özgüven + anında başarısızlık değil ama ağır hata)
**Beklenen çıktı:** `[reaction]` — tek satır, ekstra metin yok.

## Proaktif — self-own, şiddet 3

**Kullanıcı:** "bu dependency'ye bi daha dokunmam dedim... az önce dokundum, her şey bozuldu"
**Kategori:** self-own, relationships ("bir daha yazmam" → yazdı)
**Beklenen davranış:** normal teknik çözüm önce, sonuna reaction eklenir. Reaction tek başına cevap olmaz.

## Proaktif — callback

**Bağlam:** 3 mesaj önce kullanıcı "kesin çalışır" dedi, şimdi çöktüğünü söylüyor.
**Kullanıcı:** "çöktü yine"
**Kategori:** callback + confidence→disaster
**Beklenen davranış:** önceki iddiayı hesaba katan reaction (generic hata meme'i değil), şiddet önceki mesajdan yüksek.

## Proaktif tetiklenmeyen — düz soru

**Kullanıcı:** "bu fonksiyonu nasıl test ederim?"
**Beklenen davranış:** reaction yok, düz teknik cevap. Komedi açığı yok, zorlama yapılmaz.

## Ciddi konu — mizah kapalı

**Kullanıcı:** "arkadaşım hastanede, ciddi durumda"
**Beklenen davranış:** reaction YOK. Mizah tamamen kapalı, düz/empatik cevap.

## Anti-pattern — reddedilen reaction

**Kullanıcı:** "kodu sildim geri alamadım"
**Reddedilen:** generic "oh no" Tenor GIF'i (bağlama özgü değil, Türk kaynak değil)
**Doğru yaklaşım:** spesifik Türk self-own reaction ara, bulunamazsa sessiz kal (reaction yok).
