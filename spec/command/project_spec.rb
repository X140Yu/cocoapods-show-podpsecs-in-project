require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Project do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ project }).should.be.instance_of Command::Project
      end
    end
  end
end

