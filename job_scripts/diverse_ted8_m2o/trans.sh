#!/bin/bash

#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --time=0
#SBATCH --mem=15GB

OUTDIR=$1

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang bos --target-lang eng \
          --beam 5   > "$OUTDIR"/test_boseng.log

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang mar --target-lang eng \
          --beam 5   > "$OUTDIR"/test_mareng.log

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang hin --target-lang eng \
          --beam 5   > "$OUTDIR"/test_hineng.log

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang mkd --target-lang eng \
          --beam 5   > "$OUTDIR"/test_mkdeng.log

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang ell --target-lang eng \
          --beam 5   > "$OUTDIR"/test_elleng.log

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang bul --target-lang eng \
          --beam 5   > "$OUTDIR"/test_buleng.log

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang fra --target-lang eng \
          --beam 5   > "$OUTDIR"/test_fraeng.log

python generate.py data-bin/ted_8_diverse/ \
          --task multilingual_translation \
          --gen-subset test \
          --path "$OUTDIR"/checkpoint_best.pt \
          --batch-size 32 \
          --lenpen 1.0 \
          --remove-bpe sentencepiece \
	  --sacrebleu \
          --lang-pairs "bos-eng,mar-eng,hin-eng,mkd-eng,ell-eng,bul-eng,fra-eng,kor-eng" \
          --source-lang kor --target-lang eng \
          --beam 5   > "$OUTDIR"/test_koreng.log

