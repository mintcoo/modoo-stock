import { AnimatePresence, motion } from 'framer-motion';

function Intro(): JSX.Element {
  
  const onLogIn = () => {
    
  }
  
  return (
    <AnimatePresence>
      <motion.div
        className="flex flex-col justify-center items-center w-full h-full text-xl bg-center bg-[url('/src/intro/IntroBG.png')] bg-no-repeat bg-contain"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        exit={{ opacity: 0 }}
        transition={{
          duration: 1,
          delay: 0,
          ease: 'easeInOut'
        }}>
        <motion.div
          className="flex items-center w-1/3 h-1/2"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          transition={{
            duration: 0.5,
            delay: 1.5,
            ease: 'easeInOut'
          }}>
          <img
            className="w-full"
            src="/images/logos/LogoEarth.png"
            alt="logo"
          />
        </motion.div>
        <motion.div
          className="flex items-center justify-center w-1/3 h-1/2"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          transition={{
            duration: 0.5,
            delay: 1,
            ease: 'easeInOut'
          }}>
          <img
            className="w-full max-h-full lg:w-3/4"
            src="/images/intro/characters.png"
            alt="characters"
          />
        </motion.div>
        <motion.div
          onClick={onLogIn}
          className="cursor-pointer absolute right-0 w-[5%] lg:text-5xl lg:text-bold h-fit"
          animate={{ opacity: [0, 1, 0] }}
          transition={{
            duration: 2,
            delay: 2,
            repeat: Infinity,
            ease: 'linear'
          }}>
          <img
            className="w-full h-full hover:scale-110"
            src="/images/intro/increase.png"
            alt="arrow"
          />
        </motion.div>
      </motion.div>
    </AnimatePresence>
  );
}
export default Intro;
