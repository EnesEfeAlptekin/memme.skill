# memme.skill

[![lint](https://github.com/EnesEfeAlptekin/memme.skill/actions/workflows/lint.yml/badge.svg)](https://github.com/EnesEfeAlptekin/memme.skill/actions/workflows/lint.yml)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Türk internet/meme kültürüyle sert mizah katan Claude Code skill'i. Manuel çağrılır, her mesajda otomatik tetiklenmez — asıl teknik cevabın kalitesini bozmaz.

## Kurulum

Script ile (varsayılan: turkmeme):

```bash
./install.sh            # sadece turkmeme
./install.sh turkmeme-lite
./install.sh all         # ikisi de
```

Manuel:

```bash
cp -r turkmeme ~/.claude/skills/turkmeme
```

## Varyantlar

- **turkmeme**: sert Türk mizahı, küfür/kara mizah serbest. Varsayılan.
- **turkmeme-lite**: aynı mekanik, küfürsüz/iş ortamı uyumlu ton. Bkz. [turkmeme-lite/SKILL.md](turkmeme-lite/SKILL.md).

## Kullanım

Claude Code içinde: `/turkmeme` veya "meme at", "komik cevap ver" gibi açık istekle çağır. Lite versiyon için `/turkmeme-lite` veya "hafif meme at".

### Örnekler

**Manuel çağrı:**

> Kullanıcı: "kodu deploy ettim, prod çöktü, /turkmeme"
> Çıktı: `[Fatih Terim basın toplantısı "arkanıza bakın" reactionı]`

**Proaktif (self-own tespiti):**

> Kullanıcı: "bu dependency'ye bi daha dokunmam dedim... az önce dokundum, her şey bozuldu"
> Cevap: normal teknik çözüm + sona eklenen reaction `[Kurtlar Vadisi şüpheci bakış]`

**Proaktif tetiklenmeyen durum:**

> Kullanıcı: "bu fonksiyonu nasıl test ederim?"
> Cevap: düz teknik cevap, reaction yok (komedi açığı yok)

Detaylı davranış tanımı: [turkmeme/SKILL.md](turkmeme/SKILL.md)
Kaynak havuzları: [turkmeme/sources.md](turkmeme/sources.md)
Daha fazla örnek: [examples/transcripts.md](examples/transcripts.md)

## Katkı

Yeni kaynak/kural önerme süreci: [CONTRIBUTING.md](CONTRIBUTING.md)
Sürüm geçmişi: [CHANGELOG.md](CHANGELOG.md)

## Lisans

MIT, bkz. [LICENSE](LICENSE).
