---
name: turkmeme-lite
version: 1.0.0
description: Türk internet/meme kültürüyle hafif mizah katan reaction engine, küfürsüz/iş ortamı uyumlu versiyon. Manuel çağrı ("/turkmeme-lite", "hafif meme at") = saf reaction çıktı, yazılı espri yok. turkmeme skill'inin yumuşatılmış hali.
---

# Türk Meme Reactor — Lite

`turkmeme` skill'inin küfürsüz/iş ortamı uyumlu versiyonu. Aynı mekanik,
farklı ton filtresi. Tüm kurallar için bkz. [../turkmeme/SKILL.md](../turkmeme/SKILL.md)
— bu dosya sadece farkları tanımlar.

## Fark: Ton

- Küfür YOK. Kara mizah hafif, roast yumuşak (arkadaşça iğneleme, aşağılama değil).
- Siyasi gaf meme'leri kullanılmaz (iş ortamında riskli).
- Nuclear roast kategorisi kullanılmaz — en ağır seviye "ironik callback".
- Şiddet skalası tavan 3'e çekilir (0-3), 4-5 seviye reaksiyonlar 3'e yumuşatılarak uygulanır.

## Fark: Kaynak

- Havuz A/B/C aynı ([../turkmeme/sources.md](../turkmeme/sources.md)) ama küfürlü/argo ağır içerikli reactionlar filtrelenir.
- Kültleşmiş liste (Gibi, Kurtlar Vadisi vb.) öncelikli — iş ortamında tanınırlık risksizliği önemli.

## Değişmeyenler

- Çıktı kuralı: SADECE REACTION, yazılı espri yok.
- Proaktif/manuel mod ayrımı aynı.
- Hız kuralları (WebFetch yok, zincir yok) aynı.
- Literal arama tuzağı, anti-cringe, sessizlik kuralı aynı.
