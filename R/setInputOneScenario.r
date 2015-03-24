#' set inputs for one scenario
#' 
#' fills one column of input matrix 
#' 
#' @param calibration one of a limited set of integers effecting how scenarios are run 
#' @param max_gen number of generations
#' @param coll.fitvals save fitness values in a matrix 0/1
#' @param save.fitvals save fitness values to an external .csv 0/1
#' @param P_1 locus 1 frequency of resistance allele
#' @param P_2 locus 2 frequency of resistance allele
#' @param c recombination rate
#' @param a.m_00 insecticide exposure male no1 no2
#' @param a.m_a0 insecticide exposure male lo1 no2
#' @param a.m_A0 insecticide exposure male hi1 no2
#' @param a.m_0b insecticide exposure male no1 lo2
#' @param a.m_0B insecticide exposure male no1 hi2
#' @param a.m_ab insecticide exposure male lo1 lo2
#' @param a.m_AB insecticide exposure male hi1 hi2
#' @param a.m_Ab insecticide exposure male hi1 lo2
#' @param a.m_aB insecticide exposure male lo1 hi2
#' @param a.f_00 insecticide exposure female no1 no2
#' @param a.f_a0 insecticide exposure female lo1 no2
#' @param a.f_A0 insecticide exposure female hi1 no2
#' @param a.f_0b insecticide exposure female no1 lo2
#' @param a.f_0B insecticide exposure female no1 hi2
#' @param a.f_ab insecticide exposure female lo1 lo2
#' @param a.f_AB insecticide exposure female hi1 hi2
#' @param a.f_Ab insecticide exposure female hi1 lo2
#' @param a.f_aB insecticide exposure female lo1 hi2
#' @param phi.SS1_a0 Baseline fitness of SS1 in a0
#' @param phi.SS1_A0 Baseline fitness of SS1 in A0
#' @param phi.SS2_0b Baseline fitness of SS2 in 0b
#' @param phi.SS2_0B Baseline fitness of SS2 in 0B
#' @param W.SS1_00 Fitness of SS1 in 00 (no insecticide)
#' @param W.SS2_00 Fitness of SS2 in 00 (no insecticide)
#' @param h.RS1_00 Dominance coefficient locus1 in 00
#' @param h.RS1_a0 Dominance coefficient locus1 in a0
#' @param h.RS1_A0 Dominance coefficient locus1 in A0
#' @param h.RS2_00 Dominance coefficient locus2 in 00
#' @param h.RS2_0b Dominance coefficient locus2 in 0b
#' @param h.RS2_0B Dominance coefficient locus2 in 0B
#' @param s.RR1_a0 Selection coefficient locus1 in a
#' @param s.RR1_A0 Selection coefficient locus1 in A
#' @param s.RR2_0b Selection coefficient locus2 in b
#' @param s.RR2_0B Selection coefficient locus2 in B
#' @param z.RR1_00 fitness cost of resistance allele 1 in insecticide free environment
#' @param z.RR2_00 fitness cost of resistance allele 2 in insecticide free environment
#' @param niche_00 insecticide niche toggle no1 no2 0=off 1=on
#' @param niche_a0 insecticide niche toggle no1 no2 0=off 1=on
#' @param niche_A0 insecticide niche toggle hi1 no2 0=off 1=on
#' @param niche_0b insecticide niche toggle no1 lo2 0=off 1=on
#' @param niche_0B insecticide niche toggle no1 hi2 0=off 1=on
#' @param niche_ab insecticide niche toggle lo1 lo2 0=off 1=on
#' @param niche_AB insecticide niche toggle hi1 hi2 0=off 1=on
#' @param niche_Ab insecticide niche toggle hi1 lo2 0=off 1=on
#' @param niche_aB insecticide niche toggle lo1 hi2 0=off 1=on
#' 
#' @return named vector
#' @export
#' 
setInputOneScenario <- function( calibration = 100,
                                 max_gen = 100,
                                 coll.fitvals = 1,
                                 save.fitvals = 0,
                                 P_1 = 0.001,
                                 P_2 = 0.001,
                                 c = 0.5,
                                 a.m_00 = 0.1,
                                 a.m_a0 = 0,
                                 a.m_A0 = 0,
                                 a.m_0b	=	0	,
                                 a.m_0B	=	0	,
                                 a.m_ab	=	0	,
                                 a.m_AB	=	0.9	,
                                 a.m_Ab	=	0	,
                                 a.m_aB	=	0	,
                                 a.f_00	=	0.1	,
                                 a.f_a0	=	0	,
                                 a.f_A0	=	0	,
                                 a.f_0b	=	0	,
                                 a.f_0B	=	0	,
                                 a.f_ab	=	0	,
                                 a.f_AB	=	0.9	,
                                 a.f_Ab	=	0	,
                                 a.f_aB	=	0	,
                                 phi.SS1_a0	=	0	,
                                 phi.SS1_A0	=	1	,
                                 phi.SS2_0b	=	0	,
                                 phi.SS2_0B	=	1	,
                                 W.SS1_00	=	1	,
                                 W.SS2_00	=	1	,
                                 h.RS1_00	=	0	,
                                 h.RS1_a0	=	0	,
                                 h.RS1_A0	=	1	,
                                 h.RS2_00	=	0	,
                                 h.RS2_0b	=	0	,
                                 h.RS2_0B	=	1	,
                                 s.RR1_a0	=	0	,
                                 s.RR1_A0	=	1	,
                                 s.RR2_0b	=	0	,
                                 s.RR2_0B	=	1	,
                                 z.RR1_00	=	0	,
                                 z.RR2_00	=	0	,
                                 niche_00	=	1	,
                                 niche_a0	=	0	,
                                 niche_A0	=	0	,
                                 niche_0b	=	0	,
                                 niche_0B	=	0	,
                                 niche_ab	=	0	,
                                 niche_AB	=	1	,
                                 niche_Ab	=	0	,
                                 niche_aB	=	0
                                 )
{
  
  input <- matrix( ncol=1, nrow=52 )
  
  input[1] <- calibration
  input[2] <- max_gen
  input[3] <- coll.fitvals
  input[4] <- save.fitvals
  input[5] <- P_1
  input[6] <- P_2
  input[7] <- c
  input[8] <- a.m_00
  input[9] <- a.m_a0
  input[10] <- a.m_A0
  input[	11	] <-	a.m_0b
  input[	12	] <-	a.m_0B
  input[	13	] <-	a.m_ab
  input[	14	] <-	a.m_AB
  input[	15	] <-	a.m_Ab
  input[	16	] <-	a.m_ab
  input[	17	] <-	a.f_00
  input[	18	] <-	a.f_a0
  input[	19	] <-	a.f_A0
  input[	20	] <-	a.f_0b
  input[	21	] <-	a.f_0B
  input[	22	] <-	a.f_ab
  input[	23	] <-	a.f_AB
  input[	24	] <-	a.f_Ab
  input[	25	] <-	a.f_ab
  input[	26	] <-	phi.SS1_a0
  input[	27	] <-	phi.SS1_A0
  input[	28	] <-	phi.SS2_0b
  input[	29	] <-	phi.SS2_0B
  input[	30	] <-	W.SS1_00
  input[	31	] <-	W.SS2_00
  input[	32	] <-	h.RS1_00
  input[	33	] <-	h.RS1_a0
  input[	34	] <-	h.RS1_A0
  input[	35	] <-	h.RS2_00
  input[	36	] <-	h.RS2_0b
  input[	37	] <-	h.RS2_0B
  input[	38	] <-	s.RR1_a0
  input[	39	] <-	s.RR1_A0
  input[	40	] <-	s.RR2_0b
  input[	41	] <-	s.RR2_0B
  input[	42	] <-	z.RR1_00
  input[	43	] <-	z.RR2_00
  input[	44	] <-	niche_00
  input[	45	] <-	niche_a0
  input[	46	] <-	niche_A0
  input[	47	] <-	niche_0b
  input[	48	] <-	niche_0B
  input[	49	] <-	niche_ab
  input[	50	] <-	niche_AB
  input[	51	] <-	niche_Ab
  input[	52	] <-	niche_aB
  
  
  a.m <- sum(a.m_00, a.m_a0, a.m_A0, a.m_0b, a.m_0B, a.m_ab, a.m_AB, a.m_Ab, a.m_aB)
  if ( a.m != 1 ){		 
  	stop("male exposures must total one, currently: ", a.m )
  	}
  
  a.f <- sum(a.f_00, a.f_a0, a.f_A0, a.f_0b, a.f_0B, a.f_ab, a.f_AB, a.f_Ab, a.f_aB)
  if ( a.f != 1 ){		 
    stop( "female exposures must total one, currently: ", a.f )
  	}
  
 return(input)
  
}