const fs = require("fs");

module.exports = ({ github, context }) => {
  const issueComment = fs.readFileSync(
    ".github/ISSUE_COMMENT/comment.md",
    "utf8"
  );
  github.rest.issues.createComment({
    issue_number: context.issue.number,
    owner: context.repo.owner,
    repo: context.repo.repo,
    body: issueComment,
  });
};
