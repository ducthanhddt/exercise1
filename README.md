- Style: tailwindcss + flohttps://flowbite.com/

- Run project
- 1/ docker-compose up
- 2/ In new terminal:
  + docker-compose exec app bash
  + rails s
- 3/ In new terminal:
  + docker-compose exec app bash
  + rails tailwindcss:watch
- 4/ In new terminal:
  + docker-compose exec app bash
  + rails db:create
