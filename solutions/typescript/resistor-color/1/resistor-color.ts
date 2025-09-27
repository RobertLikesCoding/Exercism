export const colorCode = (color: string): number | string => {
  if (!COLORS.includes(color)) return "Not a band color."
  
  return COLORS.indexOf(color)
}

export const COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
