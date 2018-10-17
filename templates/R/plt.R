
library(ggsci)
library(png)
library(cowplot)
library(magick)

theme_set(theme_classic(base_size = 20) +
          theme(#legend.title=element_blank(),
                axis.title.y = element_text(face="bold", size=20),
                axis.title.x = element_text(face="bold", size=20),
                panel.background=element_rect(size=1, colour="black"),
                panel.grid.major = element_line(colour = "grey", size=0.4, linetype="dashed"),
                #panel.grid.major = element_blank(),
                axis.ticks=element_line(size=1.1),
                axis.ticks.length=unit(-0.25, "cm"),
                axis.text.x = element_text(margin=unit(c(0.5,0.5,0.5,0.5), "cm")),
                axis.text.y = element_text(margin=unit(c(0.5,0.5,0.5,0.5), "cm"))))

insert_minor <- function(major_labs, n_minor) {
    labs <- c(sapply(major_labs, function(x) c(x, rep("", n_minor))))
    labs[1:(length(labs)-n_minor)]
}
