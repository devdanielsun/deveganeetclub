# deveganeetclub

Vegan Recipe website, where deveganeetclub community are the authors of the recipes.

# Stack

 - Frontend is [Hugo](https://gohugo.io/)
 - Admin panel is [Tina CMS](https://tina.io/)

# Description

The recipes will be created and edited in Tina, which uses a Github service account to push the markdown files into this repo.
That way the editors do not need a Github account. Tina handles the authentication through SSO, which for ex. could be your Google account.

When a recipe is created or edited a pipeline would be triggered, that way Hugo is build and deployed to the host.

By using Hugo and Tina this way, everything is static, no database is needed, Tina handles the authentication, and no interaction of the developer is needed. The downside is (a lot of) pipeline runs, and the editor needs to wait a few minutes before there recipe (changes) becomes visible on the public site.

## License
 - **Code:** MIT — see [LICENSE](LICENSE)
 - **Content:** CC BY-NC 4.0 — see [src/content/LICENSE](content/LICENSE)
