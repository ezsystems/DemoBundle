Feature: Content

    Scenario: As a visitor, I can see the blog posts list
        Given I am on the "blog" page
         Then I see "It's helping me optimizing my business" text
         And I see "This will be our magic recipe" text
         And I see the text "It's helping me optimizing my business" in a span linked to "/Blog/It-s-helping-me-optimizing-my-business"
         And I see the text "This will be our magic recipe" in a span linked to "/Blog/This-will-be-our-magic-recipe"

    Scenario: As a visitor, I see Breadcrumbs on the Create page
        Given I am on "/Getting-Started/Selected-Features/Create"
        Then the breadcrumb has the following links:
            | Home | / |
            | Getting Started | /Getting-Started |
            | Selected Features | /Getting-Started/Selected-Features |
            | Create | null |
