###############################################################################
#Tom
###############################################################################
#Age and first order ToM
ggplot(tom, aes(x=Age,
                   y=ToM))+
  geom_jitter(height = .05,
              alpha = 0.5,
              size = 2) +
  geom_smooth(method = "glm",
              method.args = list(family ="binomial"),
              se = FALSE)+
  geom_smooth(method = "glm", 
              method.args = list(family = "binomial"), 
              se = FALSE)+
  labs(x = "Kor (év)", 
       y= "Elsőfokú ToM teszt sikere")+
  scale_y_continuous(breaks = c(0, 0.5,  1))+
  theme_classic() +
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(),
        plot.background = element_rect(fill = "white"),
        axis.text.x = element_text(color="black", size = 16),
        axis.text.y = element_text(color="black", size = 14),
        axis.text = element_text(color="black"),
        axis.title = element_text(color = "black", size = 18))+
  xlim(3.80, 7.5)


#Age and ToM accross groups
ggplot(tom, aes(x=Age,
                   y= ToM))+
  geom_jitter(height = .05,
              alpha = 0.5,
              size = 2,
              aes(color = grouping_new)) +
  geom_smooth(method = "glm",
              method.args = list(family ="binomial"),
              se = FALSE,
              aes(color= grouping_new),
              alpha= 0.2)+
  geom_smooth(method = "glm", 
              method.args = list(family = "binomial"), 
              se = FALSE, 
              color = "black", 
              linetype = "dashed",
              size=1.5)+
  labs(x = "Kor (év)", 
       y= "Elsőfokú ToM teszt sikere",
       color= "Csoportok")+
  scale_color_discrete(
    labels = c("pre-Covid", "Covid", "poszt-Covid"))+
  scale_y_continuous(breaks = c(0, 0.5,  1))+
  theme_classic() +
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(),
        plot.background = element_rect(fill = "white"),
        axis.text.x = element_text(color="black", size = 14),
        axis.text.y = element_text(color="black", size = 16),
        axis.text = element_text(color="black", size= 14),
        axis.title = element_text(color = "black", size = 18),
        legend.title = element_blank(),
        legend.text = element_text(color="black", size = 14))+
  xlim(3.80, 7.5)

#Age across groups
ggplot(tom,aes(x=grouping_new,y=Age))+
  geom_violin(fill= "#00A0E3")+
  theme_classic()+
  labs(x="Csoportok",y="Kor (év)")+
  scale_x_discrete(labels=c("pre-Covid","Covid","poszt-Covid"))+
  theme(axis.text.x=element_text(colour="black",size=14),
        axis.text.y=element_text(colour="black",size=14),
        axis.title.x=element_text(size=16),
        axis.title.y=element_text(size=16),
        axis.text = element_text(color="black"),
        plot.background = element_rect(fill = "white"),
        axis.title = element_text(color = "black")
  )







#Tom and groups, violinplot
ggplot(tom, aes(x = grouping_new, y = ToM, fill= grouping_new)) +
  geom_violin(show.legend= FALSE)+
  scale_fill_manual(values = c("#E0EAF7", "#E0EAF7", "#156082"))+
  labs(x = "Csoportok", 
       y= "Elsőfokú ToM teszt sikere")+
  scale_x_discrete(labels = c("pre-Covid", "Covid", "poszt-Covid")) +
  scale_y_continuous(breaks = c(0,0.5, 1))+
  theme_classic() +
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(),
        plot.background = element_rect(fill="white"),
        axis.text.x = element_text(color="black", size = 14),
        axis.text.y = element_text(color="black", size = 16),
        axis.text = element_text(color="black", size= 14),
        axis.title = element_text(color = "black", size = 16))


tree <- rpart(ToM ~ Age, data=tom, method= "class")
rpart.plot(tree) 
################################################################################
#ToM2nd
################################################################################
#Age and Tom2nd
ggplot(tom2nd, aes(x=Age,
                y=ToM_2nd))+
  geom_jitter(height = .05,
              alpha = 0.5,
              size = 2) +
  geom_smooth(method = "glm",
              method.args = list(family ="binomial"),
              se = FALSE)+
  geom_smooth(method = "glm", 
              method.args = list(family = "binomial"), 
              se = FALSE)+
  labs(x = "Kor (év)", 
       y= "Másodfokú ToM teszt sikere")+
  scale_y_continuous(breaks = c(0, 0.5,  1))+
  theme_classic() +
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(),
        plot.background = element_rect(fill = "white"),
        axis.text.x = element_text(color="black", size = 14),
        axis.text.y = element_text(color="black", size = 16),
        axis.text = element_text(color="black"),
        axis.title = element_text(color = "black", size = 16))+
  xlim(3.80, 10)


#Age and ToM2nd accross groups
ggplot(tom2nd_filtered, aes(x=Age,
                y= ToM_2nd))+
  geom_jitter(height = .05,
              alpha = 0.5,
              size = 2,
              aes(color = grouping_new)) +
  geom_smooth(method = "glm",
              method.args = list(family ="binomial"),
              se = FALSE,
              aes(color= grouping_new),
              alpha= 0.2)+
  geom_smooth(method = "glm", 
              method.args = list(family = "binomial"), 
              se = FALSE, 
              color = "black", 
              linetype = "dashed",
              size=1.5)+
  labs(x = "Kor (év)", 
       y= "Másodfokú ToM teszt sikere",
       color= "Csoportok")+
  scale_color_discrete(
    labels = c("Covid", "poszt-Covid"))+
  scale_y_continuous(breaks = c(0, 0.5,  1))+
  theme_classic() +
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(),
        plot.background = element_rect(fill = "white"),
        axis.text.x = element_text(color="black", size = 14),
        axis.text.y = element_text(color="black", size = 16),
        axis.text = element_text(color="black"),
        axis.title = element_text(color = "black", size = 16),
        legend.title = element_blank(),
        legend.text = element_text(color="black", size = 14))
  xlim(3.80, 10)

#Tom2nd and groups
ggplot(tom2nd_filtered, aes(x = grouping_new, y = ToM_2nd, fill= grouping_new)) +
  geom_violin(show.legend= FALSE)+
  scale_fill_manual(values = c("#E0EAF7", "#156082"))+
  labs(x = "Csoportok", 
       y= "Másodfokú ToM teszt sikere")+
  scale_x_discrete(labels = c("Covid", "poszt-Covid")) +
  scale_y_continuous(breaks = c(0,0.5, 1))+
  theme_classic() +
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(),
        plot.background = element_rect(fill="white"),
        axis.text.x = element_text(color="black", size = 14),
        axis.text.y = element_text(color="black", size = 16),
        axis.text = element_text(color="black", size= 14),
        axis.title = element_text(color = "black", size = 16))


#Age across groups
ggplot(tom2nd_filtered,aes(x=grouping_new,y=Age))+
  geom_violin(fill= "#00A0E3")+
  theme_classic()+
  labs(x="Csoportok",y="Kor (év)")+
  scale_x_discrete(labels=c("Covid","poszt-Covid"))+
  theme(axis.text.x=element_text(colour="black",size=14),
        axis.text.y=element_text(colour="black",size=14),
        axis.title.x=element_text(size=16),
        axis.title.y=element_text(size=16),
        axis.text = element_text(color="black"),
        plot.background = element_rect(fill = "white"),
        axis.title = element_text(color = "black")
  )


rpart.plot(tree_2)
################################################################################
#Real-Apparent Emotion Task
###############################################################################
#Groups and Real Apparent Emotions
ggplot(appenreal, aes(x = grouping_new, y = Appen_r_a, fill= grouping_new)) +
  geom_violin(show.legend= FALSE)+
  scale_fill_manual(values = c("#E0EAF7", "#156082", "#156082"))+
  scale_x_discrete(labels = c("pre-Covid", "Covid", "poszt-Covid")) +
  labs(x = "Csoportok", 
       y= "RAE teszt sikere")+
  scale_y_continuous(breaks = c(0,0.5, 1))+
  theme_classic() +
  theme(panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line(),
        plot.background = element_rect(fill="white"),
        axis.text.x = element_text(color="black", size = 14),
        axis.text.y = element_text(color="black", size = 16),
        axis.text = element_text(color="black"),
        axis.title = element_text(color = "black", size = 16))




