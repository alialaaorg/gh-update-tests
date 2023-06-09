const { getDadjoke } = require("random-jokes");

module.exports = async ({ github, context }) => {
  const joke = await getDadjoke();
  console.log(joke);
  github.rest.issues.createComment({
    issue_number: context.issue.number,
    owner: context.repo.owner,
    repo: context.repo.repo,
    body: joke,
  });
  return joke;
};
