require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

 	describe 'POST #create' do

 		context 'valid params' do

 			before(:each) do

 				login_with FactoryBot.create( :user )
 				request.env['HTTP_REFERER'] = '/'
 				post :create, params: {event_id: FactoryBot.create( :event ).id, content: "balbalbalbalbalblablabla"}

 			end

 			it 'should return 302' do 				
 				expect(response).to have_http_status(302)
 			end
 		end
 	end

 	describe 'POST #destroy' do

 		context 'valid params' do

 			before(:each) do

 				login_with FactoryBot.create( :user )
 				request.env['HTTP_REFERER'] = '/'
 				post :destroy, params: {event_id: FactoryBot.create( :event ).id, id: FactoryBot.create( :comment ).id}

 			end

 			it 'should return 302' do 				
 				expect(response).to have_http_status(302)
 			end
 		end
 	end
 end