class Solution:
    def trap(self, height: List[int]) -> int:
        i,j=0,len(height)-1
        ans=0
        l=r=0
        while i<j:
            l=max(l,height[i])
            r=max(r,height[j])
            
            if l<r:
                ans+= l-height[i] 
                i+=1
            else:
                ans+= r-height[j]
                j-=1

        return ans