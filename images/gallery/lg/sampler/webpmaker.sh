mkdir -p webp

for img in *.jpg *.JPG *.jpeg *.JPEG; do
  [ -e "$img" ] || continue
  convert "$img" \
  -auto-orient \
  -filter Lanczos \
  -resize 2000x2000\> \
  "webp/${img%.*}.webp"

done