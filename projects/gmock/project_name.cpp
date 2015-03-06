class ProjectName {
public:
    ProjectName() {}
    bool isEmpty() const { return true; }
};

#include <gmock/gmock.h>
using testing::Eq;

TEST(ProjectName, IsEmptyWhenCreated) {
    ProjectName project;
    ASSERT_THAT(project.isEmpty(), Eq(true));
}
