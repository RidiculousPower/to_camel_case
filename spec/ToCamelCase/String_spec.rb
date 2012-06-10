
require_relative '../../lib/to_camel_case.rb'

describe ::ToCamelCase do

  ###################
  #  to_camel_case  #
  ###################
  
  it 'can return a duplicate in camel case' do
    string = 'under_score_string'
    string.to_camel_case.should == 'UnderScoreString'
    string.should == 'under_score_string'
  end
  
  ####################
  #  to_camel_case!  #
  ####################
  
  it 'can modify itself to be camel case' do
    string = 'under_score_string'
    string.to_camel_case!.should == 'UnderScoreString'
    string.should == 'UnderScoreString'
  end

end
