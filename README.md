# Install templates

1. Add a `mail.txt` containing your email on one line in `template/hooks`
2. To set as default template: `install.sh`

# Tools

## Change mail

From the git repository to change:

```
changemail.sh
git push --force --tags origin 'refs/heads/*'
```

## List all repositories of a user or organization

`./listRepositories.rb user_or_organization`

## Show all authors from all repositories of a user

`./listRepositories.rb user_or_organization | xargs -I repo ./showPeople.sh repo`
