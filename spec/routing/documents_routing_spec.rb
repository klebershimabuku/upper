require 'rails_helper'

RSpec.describe 'routes for Documents' do
  it 'routes /documents to the documents controller' do
    expect(get('/')).to route_to('documents#index')
  end

  it 'routes /documents/new to the /new action' do
    expect(get('/documents/new')).to route_to('documents#new')
  end

  it 'routes /documents to the /create action' do
    expect(post('/documents')).to route_to('documents#create')
  end

  it 'routes /documents/1 to the destroy action' do
    expect(delete('/documents/1')).
      to route_to(controller: 'documents', action: 'destroy', id: '1')
  end
end
