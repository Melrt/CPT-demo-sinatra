require "sinatra"

enable :static

# Available colors
BLUE   = "blue"
GREEN  = "green"
PURPLE = "purple"
YELLOW = "yellow"

COLORS = [BLUE, GREEN, PURPLE, YELLOW]

get "/" do
  @profiles = [
    {
      color: COLORS.sample,
      first_name: "Adèle",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Chloé",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Claire",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Hugo",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Justine",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Lea",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Maëlle",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "MICHEL",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Rachel",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Sophie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Adrien",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Célia",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Fabrice",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Fanny",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Isabelle",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Louise",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Lucrèce",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Marion",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Valentin",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Bruno",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "isabelle",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Juliette",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Liisa",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Lucie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Lucie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Maxime",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Benjamin",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Emmanuelle",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "ERWAN",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Etienne",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Guillaume",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Julien",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Laurent",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Christophe",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Gauthier",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Vincent",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "erwan",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Floriane",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Shun",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Anne-Sophie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Augustin",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Eloïse",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Ilham",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Lucie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Amiria",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Barbara",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Camille",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Cao-Son",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Dorian",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Juliette",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Marine",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Marion",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Nicolas",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Elise",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Elisée",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Firas",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Juan",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Julie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Juliette",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Nina",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Samya",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "anaïs",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Audrey",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Diomède",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Ewann",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Ingrid",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Jean baptiste",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Jennifer",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Laurent",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Laurène",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Natalie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Natalie",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Nicolas",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Sebastien",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "Valentina",
      gender: "Femme"
    },
    {
      color: COLORS.sample,
      first_name: "Victor",
      gender: "Homme"
    },
    {
      color: COLORS.sample,
      first_name: "yanis",
      gender: "Homme"
    }
  ]

  erb :index
end
