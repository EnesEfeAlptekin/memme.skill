# memme.skill

Türk internet/meme kültürüyle sert mizah katan Claude Code skill'i. Manuel çağrılır, her mesajda otomatik tetiklenmez — asıl teknik cevabın kalitesini bozmaz.

## Kurulum

Script ile:

```bash
./install.sh
```

Manuel:

```bash
cp -r turkmeme ~/.claude/skills/turkmeme
```

## Kullanım

Claude Code içinde: `/turkmeme` veya "meme at", "komik cevap ver" gibi açık istekle çağır.

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
