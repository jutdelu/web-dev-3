import { Router } from "express";
import PostController from "../controllers/PostController";
import { authenticateJWT } from "../middleware/authMiddleware";

const PostRouter = Router();

PostRouter.get("/api/posts", PostController.listPosts);

PostRouter.post("/api/post", authenticateJWT, PostController.createPost);

PostRouter.patch("/api/post/:id", authenticateJWT, PostController.updatePost);

PostRouter.delete("/api/post/:id", authenticateJWT, PostController.deletePost);

export default PostRouter;
