# Changelog

Format: [Keep a Changelog](https://keepachangelog.com/). Versions tracked
in `turkmeme/SKILL.md` frontmatter.

## [1.2.0] - 2026-10-03

### Added
- `turkmeme-lite` skill — küfürsüz/iş ortamı uyumlu varyant, aynı mekanik.
- `.github/ISSUE_TEMPLATE/` (yeni kaynak, bug) ve `PULL_REQUEST_TEMPLATE.md`.
- `examples/transcripts.md` — kalibrasyon için örnek konuşma/reaction çiftleri.
- `turkmeme/SKILL.md`'ye proaktif modu kapatma kuralı.

### Changed
- `install.sh` artık `turkmeme`, `turkmeme-lite`, `all` hedeflerini destekliyor.

## [1.1.0] - 2026-10-03

### Added
- `turkmeme/sources.md` — kaynak havuzları (Havuz A/B/C, kültleşmiş reaction
  listesi) ana davranış dosyasından ayrıldı, bağımsız genişletilebilir.
- Anti-cringe kuralına somut ret örnekleri.
- `CONTRIBUTING.md` — yeni kaynak/kural önerme süreci.

### Changed
- `SKILL.md` kaynak bölümleri `sources.md`'ye link veriyor.

## [1.0.0] - 2026-10-03

### Added
- İlk sürüm: `turkmeme` skill, manuel + proaktif reaction modları.
- `LICENSE` (MIT), `install.sh`, README kurulum/kullanım örnekleri.
