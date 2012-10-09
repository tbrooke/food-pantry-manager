require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe VolunteersController do

  # This should return the minimal set of attributes required to create a valid
  # Volunteer. As you add validations to Volunteer, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:first_name => "Kermit",
     :last_name => "Frog",
     :email => "kermit@sesamestreet.org",
     :phone => "555-1111",
     :street => "555 Sesame St",
     :city => "New York",
     :state => "NY",
     :zip => "44444",
     :status => "Active"}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VolunteersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET sign_in" do
    it "signs in the volunteer" do
      volunteer = Volunteer.create! valid_attributes
      get :sign_in, {:id => volunteer.to_param}, valid_session
      assigns(:volunteer).should eq(volunteer)
      response.should redirect_to(time_clock_path)
    end
  end

  describe "GET index" do
    it "assigns all volunteers as @volunteers" do
      volunteer = Volunteer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:volunteers).should eq([volunteer])
    end
  end

  describe "GET show" do
    it "assigns the requested volunteer as @volunteer" do
      volunteer = Volunteer.create! valid_attributes
      get :show, {:id => volunteer.to_param}, valid_session
      assigns(:volunteer).should eq(volunteer)
    end
  end

  describe "GET new" do
    it "assigns a new volunteer as @volunteer" do
      get :new, {}, valid_session
      assigns(:volunteer).should be_a_new(Volunteer)
    end
  end

  describe "GET edit" do
    it "assigns the requested volunteer as @volunteer" do
      volunteer = Volunteer.create! valid_attributes
      get :edit, {:id => volunteer.to_param}, valid_session
      assigns(:volunteer).should eq(volunteer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Volunteer" do
        expect {
          post :create, {:volunteer => valid_attributes}, valid_session
        }.to change(Volunteer, :count).by(1)
      end

      it "assigns a newly created volunteer as @volunteer" do
        post :create, {:volunteer => valid_attributes}, valid_session
        assigns(:volunteer).should be_a(Volunteer)
        assigns(:volunteer).should be_persisted
      end

      it "redirects to the created volunteer" do
        post :create, {:volunteer => valid_attributes}, valid_session
        response.should redirect_to(Volunteer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved volunteer as @volunteer" do
        # Trigger the behavior that occurs when invalid params are submitted
        Volunteer.any_instance.stub(:save).and_return(false)
        post :create, {:volunteer => {}}, valid_session
        assigns(:volunteer).should be_a_new(Volunteer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Volunteer.any_instance.stub(:save).and_return(false)
        post :create, {:volunteer => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested volunteer" do
        volunteer = Volunteer.create! valid_attributes
        # Assuming there are no other volunteers in the database, this
        # specifies that the Volunteer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Volunteer.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => volunteer.to_param, :volunteer => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested volunteer as @volunteer" do
        volunteer = Volunteer.create! valid_attributes
        put :update, {:id => volunteer.to_param, :volunteer => valid_attributes}, valid_session
        assigns(:volunteer).should eq(volunteer)
      end

      it "redirects to the volunteer" do
        volunteer = Volunteer.create! valid_attributes
        put :update, {:id => volunteer.to_param, :volunteer => valid_attributes}, valid_session
        response.should redirect_to(volunteer)
      end
    end

    describe "with invalid params" do
      it "assigns the volunteer as @volunteer" do
        volunteer = Volunteer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Volunteer.any_instance.stub(:save).and_return(false)
        put :update, {:id => volunteer.to_param, :volunteer => {}}, valid_session
        assigns(:volunteer).should eq(volunteer)
      end

      it "re-renders the 'edit' template" do
        volunteer = Volunteer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Volunteer.any_instance.stub(:save).and_return(false)
        put :update, {:id => volunteer.to_param, :volunteer => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested volunteer" do
      volunteer = Volunteer.create! valid_attributes
      expect {
        delete :destroy, {:id => volunteer.to_param}, valid_session
      }.to change(Volunteer, :count).by(-1)
    end

    it "redirects to the volunteers list" do
      volunteer = Volunteer.create! valid_attributes
      delete :destroy, {:id => volunteer.to_param}, valid_session
      response.should redirect_to(volunteers_url)
    end
  end

end
