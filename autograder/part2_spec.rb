require 'octokit'

describe "Github" do
  it "web.rb file should contain 'Hello, SaaS world'" do

    file_contents = Octokit.contents ENV['GITHUB_USERNAME']+'/ruby-sample', :path => 'web.rb',
                                            :accept => 'application/vnd.github.raw'
    expect(file_contents).to match /Hello, SaaS world/
    # would like this grading to involve EdX username pulled in from grader
    # would also like to be checking that the commit took place (could ask for specific commit message)
  end
end
