feature 'Viewing weather page' do
    scenario 'Viewing the weather page' do
        visit('/new')  
        expect(page).to have_content "Weather Search" 
    end
end  

feature 'searching current weather' do
    scenario 'should show current weather' do
        visit('/new') 
        fill_in 'city', with: 'Epsom' 
        click_button 'Search' 
        expect(page).to have_content 'Epsom' 
        expect(page).to have_content 'Feels like' 
        expect(page).to have_content 'Wind Speed'
    end
end

feature 'Look at about page' do
    scenario 'about page should contane' do
        visit('/new') 
        click_link 'About'  
        expect(page).to have_content 'About Page'
        expect(page).to have_content 'Welcome to this simple weather app. Where you can find out what the weather is like in any part of the UK, this includes regions, counties and cities.'
    end
end

feature 'Search weather page' do
    scenario 'should return back to weather page if there is nothing to search' do
        visit('/new') 
        fill_in 'city', with: '' 
        click_button 'Search' 
        expect(page).to have_content 'Weather Search'
    end 

    scenario 'should return back to weather page if the name of the location is wrong' do
        visit('/new') 
        fill_in 'city', with: 'Lonon' 
        click_button 'Search' 
        expect(page).to have_content 'Weather Search'
    end 

    scenario 'should return back to weather page if location is not in the United Kingdom' do
        visit('/new') 
        fill_in 'city', with: 'Oslo' 
        click_button 'Search' 
        expect(page).to have_content 'Weather Search'
    end
end  

